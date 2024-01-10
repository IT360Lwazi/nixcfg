{ config, pkgs, ... }:
{
  users.users = {
    tcurdt = {
      # shell = pkgs.nushell;
      isNormalUser = true;
      extraGroups = [ "wheel" ];
      openssh.authorizedKeys.keyFiles = [ ./tcurdt.pub ];
      # openssh.authorizedKeys.keyFiles = [ (fetchKeys "tcurdt") ]; # github
      # openssh.authorizedKeys.keys = [
      #   "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA2CLOzyXcqk4uo6hCkkQAtozJCebA/Dh4ps6Vr2GVNTC7j7nF5HuT+penp/Y9yPAuTorxunmFn7BPwZggzopEgfmUQ4gf0CysTwPQMxt9yK3ZHpxgkGoJyR0n91OdPAbukqwWZHYxGGxvHNoap59kobUrIImIa97gKxW+IVKwL9iyWXyqonRpue1mf1N1ioDtPLS1yvzf4Jo7aDND+4I/34X6436VwZItUwzvhFcuNh/gQmvKpmVjD+ED2Q/yRtGq0EzsPfrDZg1ZKV5V1cT/3w7QtYFcZB9+AQxq88jVRcIlf3K45kpmbsWVfBFN6ND+NeZK1mlp/3TV8C6dNVqU2w== tcurdt@shodan.local"
      # ];
      # openssh.authorizedKeys.keys = [ (builtins.readFile ./tcurdt.pub) ];
      packages = with pkgs; [
        tmux
        htop
      ];
      # hashedPassword = "*"; # no password allowed
    };
  };
}