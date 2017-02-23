require_relative 'element_set'

module Orbital
  class Parser
    attr_reader :line_delimiter

    def initialize(options={})
      @line_delimiter = options[:line_delimiter] || "\n"
    end
  end
end