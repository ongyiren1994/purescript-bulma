module Bulma.Components.MenuTest where

import Prelude

import Bulma.Components.Menu (menu, menuLabel, menuList)
import Bulma.Common (ClassName(..))
import Control.Monad.Free (Free)
import Test.Unit (TestF, suite, test)
import Test.Unit.Assert (equal)

testSuiteMenu :: Free TestF Unit
testSuiteMenu =
  suite "Menu" do
    test "common" do
      menu `equal` ClassName "menu"
      menuLabel `equal` ClassName "menu-label"
      menuList `equal` ClassName "menu-list"
