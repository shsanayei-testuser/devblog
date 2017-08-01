module Jekyll
  class XmlConverter < Converter
    safe true
    priority :low

    def extname_list
        @extname_list ||= @config["markdown_ext"].split(",").map do |e|
          ".#{e.downcase}"
        end
      end

    def matches(ext)
        extname_list.include?(ext.downcase)
    end

    def output_ext(ext)
      ".xml"
    end

    def convert(content)
      content
    end
  end
end