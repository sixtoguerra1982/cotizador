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
    @etiqueta[:dos] = [@dimensiontotal * 2]
    @etiqueta[:tres] = [@dimensiontotal * 3]
    @etiqueta[:cuatro] = [@dimensiontotal * 4]
    @etiqueta[:cinco] = [@dimensiontotal * 5]
    @etiqueta[:seis] = [@dimensiontotal * 6]
    @etiqueta[:siete] = [@dimensiontotal * 7]
    @etiqueta[:ocho] = [@dimensiontotal * 8]
  end
end
