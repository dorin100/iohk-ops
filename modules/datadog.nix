{ config, pkgs, lib, ... }:

with (import ./../lib.nix);

{
  config = {
    services.dd-agent = {
      enable = true;
      api_key = fileContents ./../static/datadog.secret;
      hostname = config.networking.hostName;
    };
  };
}
