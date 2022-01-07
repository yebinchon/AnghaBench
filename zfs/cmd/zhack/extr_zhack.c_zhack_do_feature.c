
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,...) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int usage () ;
 int zhack_do_feature_enable (int,char**) ;
 int zhack_do_feature_ref (int,char**) ;
 int zhack_do_feature_stat (int,char**) ;

__attribute__((used)) static int
zhack_do_feature(int argc, char **argv)
{
 char *subcommand;

 argc--;
 argv++;
 if (argc == 0) {
  (void) fprintf(stderr,
      "error: no feature operation specified\n");
  usage();
 }

 subcommand = argv[0];
 if (strcmp(subcommand, "stat") == 0) {
  zhack_do_feature_stat(argc, argv);
 } else if (strcmp(subcommand, "enable") == 0) {
  zhack_do_feature_enable(argc, argv);
 } else if (strcmp(subcommand, "ref") == 0) {
  zhack_do_feature_ref(argc, argv);
 } else {
  (void) fprintf(stderr, "error: unknown subcommand: %s\n",
      subcommand);
  usage();
 }

 return (0);
}
