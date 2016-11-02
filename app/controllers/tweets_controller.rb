class TweetsController < ApplicationController
  def index
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)

    respond_to do |format|
      if @tweet.save
        format.html { redirect_to tweet_path(@tweet.id), notice: 'sucess!'}
      else
        format.html { render :new, error: 'there was a problem' error: 'there was a problem'}
      end
    end
  end

  def show
  end

  def edit
  end

  def new
  end

 private

 def tweet_params
    params.require(:tweet).permit(:message, :user_id)
  end
end
