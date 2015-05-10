module ApplicationHelper

  def link_to_active(label,path)
    link_to label, path, class: (current_page?(path)? 'active' : nil)
  end
	
end
