class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    #este es el index de la aplicacion web twitter
  end

  def data
    puts "***********************"
    puts params[:nombre]
    puts params[:correo]
    puts params[:clave]
    redirect_to "/"
  end

  def intro
    @correo = params[:correo]
    @clave = params[:clave]
    render "/datos"
  end

  def calculadora
    render "/calculadora"
  end

  def calculo
    valor1 = params[:valor1].to_i
    valor2 = params[:valor2].to_i
    operacion = params[:operacion].to_i
    if operacion == 1
      @total = valor1 + valor2
    elsif operacion == 2
      @total = valor1 - valor2
    elsif operacion == 3
      @total = valor1 * valor2
    elsif operacion == 4
      @total = valor1 / valor2
    end
    #puts "*****************"
    #puts @total se quitan estos puts y se renderiza
    render "/calculadora" 
       
  end
end

