module Jekyll
  class Vimeo < Liquid::Tag

    def initialize(name, id, tokens)
      super
      @id = id
    end

    def render(context)
      %(<p><div class="embed-video-container"><iframe src="http://player.vimeo.com/video/#{@id}"></iframe></div></p>)
    end
  end
end

Liquid::Template.register_tag('vimeo', Jekyll::Vimeo)