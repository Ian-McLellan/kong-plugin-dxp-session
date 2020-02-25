package = "kong-plugin-dxp-session"

version = "0.1.0-1"

supported_platforms = {"linux", "macosx"}

source = {
  url = "https://github.com/Ian-McLellan/kong-plugin-dxp-session.git",
  tag = "2.2.0"
}

description = {
  summary = "A Kong plugin to support implementing sessions for auth plugins.",
  homepage = "http://konghq.com",
  license = "Apache 2.0"
}

dependencies = {
  "lua >= 5.1",
  "lua-resty-session == 2.24",
  --"kong >= 1.2.0",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.dxp-session.handler"] = "kong/plugins/dxp-session/handler.lua",
    ["kong.plugins.dxp-session.schema"] = "kong/plugins/dxp-session/schema.lua",
    ["kong.plugins.dxp-session.access"] = "kong/plugins/dxp-session/access.lua",
    ["kong.plugins.dxp-session.session"] = "kong/plugins/dxp-session/session.lua",
    ["kong.plugins.dxp-session.daos"] = "kong/plugins/dxp-session/daos.lua",
    ["kong.plugins.dxp-session.storage.kong"] = "kong/plugins/dxp-session/storage/kong.lua",
    ["kong.plugins.dxp-session.migrations.000_base_session"] = "kong/plugins/dxp-session/migrations/000_base_session.lua",
    ["kong.plugins.dxp-session.migrations.init"] = "kong/plugins/dxp-session/migrations/init.lua",
  }
}
