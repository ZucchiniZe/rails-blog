module ApplicationHelper
  def nav_link(link_text, link_path)
    if link_path =~ /#{link_text}/i
      class_name = 'active'
    else
      class_name = ''
    end

    content_tag(:li, :class => class_name) do
      link_to link_text, link_path
    end
  end
end
