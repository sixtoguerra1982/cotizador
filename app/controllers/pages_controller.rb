class PagesController < ApplicationController
  def index
    @etiqueta = {dimension_total: "---" , x: 0, y: 1}
  end

  def calcular
    plano = 100
    @dimensionx =  plano / params[:ancho].to_i
    @dimensiony = plano / params[:alto].to_i
    @dimensiontotal = @dimensionx * @dimensiony
    @etiqueta = {dimension_total: @dimensiontotal , x: @dimensionx, y: @dimensiony}
  end
end
