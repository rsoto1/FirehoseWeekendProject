class PicsController < ApplicationController
def new
		# hello Ruby code here
		@pic = Pic.new
end

def create
	@pic = Pic.create(params[:pic])
	redirect_to pics_path
end

def index
	@pics = Pic.all
end	

def show
end

def destroy
end

def edit
end

def update
end


end
