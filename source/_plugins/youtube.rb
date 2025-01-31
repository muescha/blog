module Jekyll
  class Youtube < Liquid::Tag

    def initialize(name, id, tokens)
      super
      @id = id
    end

    def render(context)
      %(<p><div class="embed-video-container"><iframe src="http://www.youtube.com/embed/#{@id}"></iframe></div></p>)
    end
  end
end

Liquid::Template.register_tag('youtube', Jekyll::Youtube)