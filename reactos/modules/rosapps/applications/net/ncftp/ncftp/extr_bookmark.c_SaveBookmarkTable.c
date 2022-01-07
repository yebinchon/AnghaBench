
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ deleted; } ;
typedef int FILE ;


 int CloseBookmarkFile (int *) ;
 int * OpenTmpBookmarkFile (int) ;
 scalar_t__ SwapBookmarkFiles () ;
 scalar_t__ WriteBmLine (TYPE_1__*,int *,int) ;
 TYPE_1__* gBookmarkTable ;
 int gNumBookmarks ;

int
SaveBookmarkTable(void)
{
 int i;
 FILE *outfp;
 int nb;

 if ((gNumBookmarks < 1) || (gBookmarkTable == ((void*)0)))
  return (0);


 for (i=0, nb=0; i<gNumBookmarks; i++) {
  if (gBookmarkTable[i].deleted == 0)
   nb++;
 }
 outfp = OpenTmpBookmarkFile(nb);
 if (outfp == ((void*)0)) {
  return (-1);
 }

 for (i=0; i<gNumBookmarks; i++) {
  if (gBookmarkTable[i].deleted == 0) {
   if (WriteBmLine(gBookmarkTable + i, outfp, 1) < 0) {
    CloseBookmarkFile(outfp);
    return (-1);
   }
  }
 }
 CloseBookmarkFile(outfp);
 if (SwapBookmarkFiles() < 0) {
  return (-1);
 }
 return (0);
}
