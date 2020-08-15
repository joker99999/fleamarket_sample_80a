module ApplicationHelper
  def logo_white_svg filename, options={}
    file = File.read(Rails.root.join('app', 'assets', 'images', 'logo_white.svg'))
    doc = Nokogiri::HTML::DocumentFragment.parse file
    svg = doc.at_css 'svg'
    if options[:class].present?
      svg['class'] = options[:class]
    end
    doc.to_html.html_safe
  end
end
