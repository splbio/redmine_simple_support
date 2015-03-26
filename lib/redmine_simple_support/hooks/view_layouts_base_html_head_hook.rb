module RedmineSimpleSupport
  module Hooks
    class ViewLayoutsBaseHtmlHeadHook < Redmine::Hook::ViewListener
      # Render the CSS to align the support urls
      #
      # A hook is used instead of a header_tags block because this may
      # need to be applied to multiple pages, whenever an issue list is
      # shown.
      #
      render_on(:view_layouts_base_html_head,
                :partial => 'issues/support_url_html_head',
                :layout => false)
    end
  end
end
