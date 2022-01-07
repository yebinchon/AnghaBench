
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ans ;
struct TYPE_4__ {char* pass; char* bookmarkName; } ;


 int FillBookmarkInfo (TYPE_1__*) ;
 scalar_t__ PutBookmark (TYPE_1__*,int) ;
 int ReCacheBookmarks () ;
 int StrToBool (char*) ;
 int fflush (int ) ;
 int fgets (char*,int,int ) ;
 int fprintf (int ,char*) ;
 TYPE_1__ gBm ;
 int gLoadedBm ;
 int gSavePasswords ;
 int memset (char*,int ,int) ;
 int printf (char*,...) ;
 int stderr ;
 int stdin ;

void
SaveCurrentAsBookmark(void)
{
 int saveBm;
 char ans[64];


 FillBookmarkInfo(&gBm);

 saveBm = gSavePasswords;
 if (gLoadedBm != 0)
  saveBm = 1;
 if ((saveBm < 0) && (gBm.pass[0] != '\0')) {
  (void) printf("\n\nYou logged into this site using a password.\nWould you like to save the password with this bookmark?\n\n");
  (void) printf("Save? [no] ");
  (void) memset(ans, 0, sizeof(ans));
  fflush(stdin);
  (void) fgets(ans, sizeof(ans) - 1, stdin);
  if ((saveBm = StrToBool(ans)) == 0) {
   (void) printf("\nNot saving the password.\n");
  }
 }
 if (PutBookmark(&gBm, saveBm) < 0) {
  (void) fprintf(stderr, "Could not save bookmark.\n");
 } else {

  gLoadedBm = 1;
  (void) printf("Bookmark \"%s\" saved.\n", gBm.bookmarkName);

  ReCacheBookmarks();
 }
}
