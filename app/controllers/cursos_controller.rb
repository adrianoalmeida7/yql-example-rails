class CursosController < ApplicationController
  def index
    base_url = "http://query.yahooapis.com/v1/public/yql"
    query = "use 'http://ahalmeida.me/tabelas_yql/caelum.proximoscursos.xml'; select * from caelum.proximoscursos;"
    resp = Restfulie.at(base_url).get(:q=>query)
    @cursos = resp['query']['results']['cursos']['curso']
  end
end
