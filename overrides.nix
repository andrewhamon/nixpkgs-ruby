{ versionComparison
, openssl_1_1
, rubygems-2_7
, rubygems-2_6
}:
[
  {
    condition = version: with versionComparison version;
      lessThan "3";
    override = pkg: pkg.override { openssl = openssl_1_1; };
  }
  {
    condition = version: with versionComparison version;
      lessThan "2.5";
    override = pkg: pkg.override { rubygems = rubygems-2_7; };
  }
  {
    condition = version: with versionComparison version;
      lessOrEqualTo "2.4";
    override = pkg: pkg.override { rubygems = rubygems-2_6; };
  }
]
