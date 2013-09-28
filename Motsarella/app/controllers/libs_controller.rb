class LibsController < ApplicationController


	def blanks
		@libs = Libs.find(params)
	end

	def edit
		@libs = Libs.find(params[:id])
		@result = @libs.generateLib()
	end

	def index
		@libs = Libs.all
	end

	def create

		@libs = Libs.new(params[:libs])

		#issue: madlibs with the same title overwrite each other
		
	 	if @libs.save
	 		render "show"
	 	else
	 		render "new"
	 	end
	 	
	 	#else
	 	#	@libs.errors.add("We're sorry. That name is already taken.")
	 	#	render "new"
	 	#end
	end

	def new
		@libs = Libs.new
	end

	def show 
		@libs = Libs.find(params[:id])
	end



end

