class Mdeditor::FrontEnd
  class << self
    def get_markdown(detail)
      puts detail
    end
    def markdown_text(text)
        #HTML Options
        options = {
          filter_html:     true,
          hard_wrap:       true,
          link_attributes: { rel: 'nofollow', target: "_blank" },
          space_after_headers: true,
          fenced_code_blocks: true
        }
        extensions = {
            autolink:           true,
            superscript:        true,
            disable_indented_code_blocks: true
          }
        renderer = Redcarpet::Render::HTML.new(options)
        markdown = Redcarpet::Markdown.new(renderer, extensions)
        markdown.render(text).html_safe
    end
  end
end
