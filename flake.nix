{
  inputs = {
    typhon.url = "github:typhon-ci/typhon";
  };

  outputs =
    { self
    , typhon
    ,
    }: {
      typhonProject = typhon.lib.github.mkProject {
        owner = "jetjinser";
        repo = "flake";
        secrets = ./secrets.age;
        typhonUrl = "https://typhon.yeufossa.org";
      };
    };
}
