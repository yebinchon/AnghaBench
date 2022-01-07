
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int S_ISGID ;
 int S_ISUID ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;
 int test_stat_mode (int) ;

int
main(int argc, char *argv[])
{
 const char *name;
 mode_t extra;

 if (argc < 2) {
  fprintf(stderr, "Invalid argc\n");
  exit(1);
 }

 name = argv[1];
 if (strcmp(name, "SUID") == 0) {
  extra = S_ISUID;
 } else if (strcmp(name, "SGID") == 0) {
  extra = S_ISGID;
 } else if (strcmp(name, "SUID_SGID") == 0) {
  extra = S_ISUID | S_ISGID;
 } else if (strcmp(name, "NONE") == 0) {
  extra = 0;
 } else {
  fprintf(stderr, "Invalid name %s\n", name);
  exit(1);
 }

 test_stat_mode(extra);

 return (0);
}
