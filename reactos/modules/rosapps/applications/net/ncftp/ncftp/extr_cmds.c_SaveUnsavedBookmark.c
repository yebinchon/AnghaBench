
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int url ;
typedef int ans ;
struct TYPE_5__ {int dir; } ;


 int BookmarkToURL (TYPE_1__*,char*,int) ;
 int FillBookmarkInfo (TYPE_1__*) ;
 scalar_t__ PromptForBookmarkName (TYPE_1__*) ;
 int SaveCurrentAsBookmark () ;
 int fflush (int ) ;
 int * fgets (char*,int,int ) ;
 scalar_t__ gAutoSaveChangesToExistingBookmarks ;
 TYPE_1__ gBm ;
 scalar_t__ gConfirmClose ;
 int gLoadedBm ;
 char* gOurDirectoryPath ;
 int memset (char*,int ,int) ;
 int printf (char*,...) ;
 int sleep (int) ;
 int stdin ;
 scalar_t__ strcmp (char*,int ) ;

void
SaveUnsavedBookmark(void)
{
 char url[256];
 char ans[64];
 int c;

 if ((gConfirmClose != 0) && (gLoadedBm == 0) && (gOurDirectoryPath[0] != '\0')) {
  FillBookmarkInfo(&gBm);
  BookmarkToURL(&gBm, url, sizeof(url));
  (void) printf("\n\nYou have not saved a bookmark for this site.\n");
  (void) sleep(1);
  (void) printf("\nWould you like to save a bookmark to:\n\t%s\n\n", url);
  for (;;) {
   (void) printf("Save? (yes/no) ");
   (void) memset(ans, 0, sizeof(ans));
   fflush(stdin);
   if (fgets(ans, sizeof(ans) - 1, stdin) == ((void*)0)) {
    c = 'n';
    break;
   }
   c = ans[0];
   if ((c == 'n') || (c == 'y'))
    break;
   if (c == 'N') {
    c = 'n';
    break;
   } else if (c == 'Y') {
    c = 'y';
    break;
   }
  }
  if (c == 'n') {
   (void) printf("Not saved.  (If you don't want to be asked this, \"set confirm-close no\")\n\n\n");

  } else if (PromptForBookmarkName(&gBm) < 0) {
   (void) printf("Nevermind.\n");
  } else {
   SaveCurrentAsBookmark();
  }
 } else if ((gLoadedBm == 1) && (gOurDirectoryPath[0] != '\0') && (strcmp(gOurDirectoryPath, gBm.dir) != 0)) {

  if (gAutoSaveChangesToExistingBookmarks != 0) {
   SaveCurrentAsBookmark();
  }
 }
}
