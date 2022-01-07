
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bm ;
typedef int CommandPtr ;
typedef int ArgvInfoPtr ;


 int ARGSUSED (int ) ;
 int OpenCmd (int,char const**,int ,int ) ;
 scalar_t__ PrintHosts () ;
 scalar_t__ RunBookmarkEditor (char*,int) ;
 int gUnusedArg ;
 int printf (char*) ;

void
HostsCmd(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
 const char *av[3];
 char bm[128];

 ARGSUSED(gUnusedArg);

 if ((argc == 1) && (RunBookmarkEditor(bm, sizeof(bm)) == 0)) {
  if (bm[0] != '\0') {
   av[0] = "open";
   av[1] = bm;
   av[2] = ((void*)0);
   OpenCmd(2, av, (CommandPtr) 0, (ArgvInfoPtr) 0);
  }
  return;
 }
 if (PrintHosts() <= 0) {
  (void) printf("You haven't bookmarked any FTP sites.\n");
  (void) printf("Before closing a site, you can use the \"bookmark\" command to save the current\nhost and directory for next time.\n");
 } else {
  (void) printf("\nTo use a bookmark, use the \"open\" command with the name of the bookmark.\n");
 }
}
