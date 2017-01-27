FROM checkraiser/haskell-docker

RUN stack setup --resolver lts-7.16
# Cache some deps
RUN cabal install gtk2hs-buildtools && cabal install gtk
RUN stack --resolver lts-7.16 build lens-aeson yesod yesod-test esqueleto http-client free classy-prelude-yesod classy-prelude-conduit case-insensitive gravatar wreq xml-conduit warp hspec QuickCheck wai-logger persistent-postgresql HUnit uuid-aeson monad-logger mandrill email-validate yesod-auth yesod-newsfeed yesod-form haskell-src-exts cpphs polyparse xml-hamlet th-orphans either base-compat th-expand-syns th-lift MonadRandom servant-server wai blaze-html servant-client lucid configurator hspec-wai hspec-wai-json fltkhs-0.5.0.3 hsqml-0.3.4.1 wx-0.11.1.2 wxcore-0.11.1.2