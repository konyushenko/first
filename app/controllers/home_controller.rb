class HomeController < ApplicationController
  def index
  end

  def welcome
  	if params.key?(:number)
  		@noNumber=false
  		@x=params[:number].to_i
  	else	
  		@noNumber=true
  	end
  end


  def redirector
  	if params.key?(:number)
  		redirect_to ('/number/'+params[:number])
  	else
  		redirect_to '/'
  	end
  end
end
