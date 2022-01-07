
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int line ;
struct TYPE_4__ {int bookmarkName; } ;
typedef int FILE ;
typedef TYPE_1__ Bookmark ;


 int CloseBookmarkFile (int *) ;
 int * FGets (char*,int,int *) ;
 int * OpenBookmarkFile (int *) ;
 int * OpenTmpBookmarkFile (int ) ;
 int STRNCAT (char*,char*) ;
 int STRNCPY (char*,int ) ;
 scalar_t__ SwapBookmarkFiles () ;
 scalar_t__ WriteBmLine (TYPE_1__*,int *,int) ;
 scalar_t__ fclose (int *) ;
 scalar_t__ fprintf (int ,char*,...) ;
 int perror (char*) ;
 int stderr ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char*,char*,size_t) ;

int
PutBookmark(Bookmark *bmp, int savePassword)
{
 FILE *infp, *outfp;
 char line[256];
 char bmAbbr[64];
 int replaced = 0;
 size_t len;

 outfp = OpenTmpBookmarkFile(0);
 if (outfp == ((void*)0))
  return (-1);

 (void) STRNCPY(bmAbbr, bmp->bookmarkName);
 (void) STRNCAT(bmAbbr, ",");
 len = strlen(bmAbbr);


 infp = OpenBookmarkFile(((void*)0));
 if (infp != ((void*)0)) {
  while (FGets(line, sizeof(line), infp) != ((void*)0)) {
   if (strncmp(line, bmAbbr, len) == 0) {

    if (WriteBmLine(bmp, outfp, savePassword) < 0) {
     (void) fprintf(stderr, "Could not save bookmark.\n");
     perror("reason");
     (void) fclose(outfp);
    }
    replaced = 1;
   } else {
    if (fprintf(outfp, "%s\n", line) < 0) {
     (void) fprintf(stderr, "Could not save bookmark.\n");
     perror("reason");
     (void) fclose(outfp);
     return (-1);
    }
   }
  }
  CloseBookmarkFile(infp);
 }

 if (replaced == 0) {

  if (WriteBmLine(bmp, outfp, savePassword) < 0) {
   (void) fprintf(stderr, "Could not save bookmark.\n");
   perror("reason");
   (void) fclose(outfp);
   return (-1);
  }
 }

 if (fclose(outfp) < 0) {
  (void) fprintf(stderr, "Could not save bookmark.\n");
  perror("reason");
  return (-1);
 }

 if (SwapBookmarkFiles() < 0) {
  (void) fprintf(stderr, "Could not rename bookmark file.\n");
  perror("reason");
  return (-1);
 }
 return (0);
}
