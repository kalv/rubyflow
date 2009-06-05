class String
  def strip_xml
    self.gsub(/<(.*?)>/, '')
  end

  def to_safe_uri
    self.strip.downcase.gsub('&', 'and').gsub(' ', '-').gsub(/[^\w-]/,'')
  end
end