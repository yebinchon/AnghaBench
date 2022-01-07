
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* bookmarkName; } ;
typedef int CommandPtr ;
typedef int ArgvInfoPtr ;


 int ARGSUSED (int ) ;
 scalar_t__ PromptForBookmarkName (TYPE_1__*) ;
 int STRNCPY (char*,char const*) ;
 int SaveCurrentAsBookmark () ;
 TYPE_1__ gBm ;
 char* gOurDirectoryPath ;
 int gUnusedArg ;
 int printf (char*) ;

void
BookmarkCmd(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{



 ARGSUSED(gUnusedArg);

 if (gOurDirectoryPath[0] == '\0') {
  (void) printf("Sorry, configuration information is not saved for this user.\n");
 } else if ((argc <= 1) || (argv[1][0] == '\0')) {

  if (gBm.bookmarkName[0] == '\0') {

   if (PromptForBookmarkName(&gBm) < 0) {
    (void) printf("Nevermind.\n");
   } else {
    SaveCurrentAsBookmark();
   }
  } else {

   SaveCurrentAsBookmark();
  }
 } else {
  (void) STRNCPY(gBm.bookmarkName, argv[1]);
  SaveCurrentAsBookmark();
 }
}
