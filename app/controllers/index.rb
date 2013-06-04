get '/' do
  # Look in app/views/index.erb
  erb :index
end


get '/:word' do
  @word = Word.new(:word => params[:word])
  @answer = @word.anagrams
  p @answer
  erb :show_word
end
