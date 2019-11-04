class PokemonController < ApplicationController
    def capture
        @pokemon = Pokemon.find(params[:id])
        @pokemon.update(trainer_id: current_trainer.id)
        @pokemon.save
    
        redirect_to root_path
      end
    
      def damage
        @pokemon = Pokemon.find(params[:id])
        @pokemon.Health = @pokemon.Health - 10
        @pokemon.save
    
        if @pokemon.Health <= 0
          @pokemon.destroy
        end
        redirect_to trainer_path(trainer_id = current_trainer.id)
      end
    
      def new
        @pokemon = Pokemon.new
      end
    
      def create
        @pokemon = Pokemon.create(pokemon_params)
        @pokemon.update(trainer_id: current_trainer.id, Health: 100, level:  1)
    
        if @pokemon.save
          redirect_to trainer_path(trainer_id = current_trainer.id)
        else
          render 'new'
          flash[:error] = @pokemon.errors.full_messages.to_sentence
        end
      end
    
      private
        def pokemon_params
          params.require(:pokemon).permit(:name, :ndex) # permit for mass updates
        end
    

end