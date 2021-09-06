package = "kong-check-header-x"
version = "1.0-1"
source = {
  url = "https://github.com/jaikratsinghtariyal/kong-plugin",
}

description = {
  summary = "Kong is a scalable and customizable API Management Layer built on top of Nginx.",
  license = "Apache 2.0",
}

dependencies = {
  "lua ~> 5.1"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-check-x-header.handler"] = "plugin/handler.lua",
    ["kong.plugins.kong-check-x-header.schema"] = "plugin/schema.lua",
  }
}
