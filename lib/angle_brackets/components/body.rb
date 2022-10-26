# typed: true

module AngleBrackets
  module Components
    class Body < Renderable
      extend T::Sig

      sig { override.params(children: T.nilable(T.proc.returns(T.any(Renderable, String, Array)))).returns(String) }
      def render(&children)
        render_tag "body", &children
      end
    end
  end
end
