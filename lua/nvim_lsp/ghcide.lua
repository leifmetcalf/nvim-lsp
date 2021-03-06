local configs = require 'nvim_lsp/configs'
local util = require 'nvim_lsp/util'
local lsp = vim.lsp

configs.ghcide = {
  default_config = {
    cmd = { "ghcide", "--lsp" };
    filetypes = { "haskell", "lhaskell" };
    root_dir = util.root_pattern("stack.yaml", "hie-bios", "BUILD.bazel", "cabal.config", "package.yaml");
    log_level = lsp.protocol.MessageType.Warning;
  };

  docs = {
    vscode = "DigitalAssetHoldingsLLC.ghcide";
    description = [[
https://github.com/digital-asset/ghcide

A library for building Haskell IDE tooling.
]];
    default_config = {
      root_dir = [[root_pattern("stack.yaml", "hie-bios", "BUILD.bazel", "cabal.config", "package.yaml")]];
    };
  };
};

-- vim:et ts=2 sw=2
