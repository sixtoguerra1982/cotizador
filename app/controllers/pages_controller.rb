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
    neto = [12000,12000,12000,10000,10000,10000,10000,10000,10000,10000,10000,7000,7000]
    12.times do |i|
      @etiqueta["p" + (i+1).to_s] = [@dimensiontotal * (i + 1)]
      @etiqueta["p" + (i+1).to_s].push (i + 1) * neto[i]
      @etiqueta["p" + (i+1).to_s].push (((i + 1) * neto[i]) * 0.19).to_i
      @etiqueta["p" + (i+1).to_s].push @etiqueta["p" + (i+1).to_s][1] + @etiqueta["p" + (i+1).to_s][2]
    end
  end
end
