module ApplicationHelper
  def syllabus(klass)
    link_to "Show (#{klass.sections.size})", sections_klass_path(klass)
  end

  def link(url)
    if url =~ /(png)|(jpg)/
      return "<img class='img-thumbnail' style='width:300px;height:300px;' src='#{url}'>".html_safe
    end

    if url =~ /youtu.be/
      return "<iframe width='560' height='315' src='https://www.youtube.com/embed/#{url.split('/').last}' frameborder='0' allowfullscreen></iframe>".html_safe
    end
  end

  def file(url)
    if url =~ /(png)|(jpg)/
      return "<img class='img-thumbnail' style='width:300px;height:300px;' src='#{url}'>".html_safe
    end

    if url =~ /pdf/
      return link_to 'Download File', url
    end
  end
end
