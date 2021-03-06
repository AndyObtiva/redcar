
module Redcar
  class REPL
    class FakeEvaluator
      def execute(expr)
        "#{expr} was entered"
      end
    end

    class FakeOpenREPL < OpenREPL
      def execute
        open_repl(ReplMirror.new)
      end
    end
  end
end