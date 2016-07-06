class PagesController < ApplicationController
  def batman
  end
  def superman
  end
  def batman_vs_superman
  end
  def save_vote
  	@heroe=params[:txt_heroe]
  	@email=params[:txt_mail]

  	@newuser= User.new(heroe: @heroe, email: @email)

	if @newuser.save
		@respuesta = "Tu voto a sido registrado"
	else
		@respuesta = "Ocurrio un error"
	end
  end
end
