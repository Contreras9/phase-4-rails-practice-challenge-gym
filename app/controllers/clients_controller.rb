class ClientsController < ApplicationController

    def index
        render json: Client.all, status: :ok
    end
    
    def show
        client = Client.find(params[:id])
        render json: client, status: :ok
    end

    def update
        client = Client.find(params[:id])
        client.update!(client_params)
        render json: gym, status: :ok
    end

    private

    def client_params
        params.permit(:name, :age)
    end

end
