
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef int Bookmark ;


 int CloseBookmarkFile (int *) ;
 scalar_t__ GetNextBookmark (int *,int *) ;
 int * OpenBookmarkFile (int*) ;
 int SortBookmarks () ;
 int * calloc (size_t,size_t) ;
 int * gBookmarkTable ;
 int gNumBookmarks ;
 int memset (int *,int ,int) ;
 scalar_t__ realloc (int *,size_t) ;

int
LoadBookmarkTable(void)
{
 int i, nb;
 FILE *infp;

 infp = OpenBookmarkFile(&nb);
 if (infp == ((void*)0)) {
  nb = 0;
 }
 if ((nb != gNumBookmarks) && (gBookmarkTable != ((void*)0))) {

  gBookmarkTable = (Bookmark *) realloc(gBookmarkTable, (size_t) (nb + 1) * sizeof(Bookmark));
  memset(gBookmarkTable, 0, (nb + 1) * sizeof(Bookmark));
 } else {
  gBookmarkTable = calloc((size_t) (nb + 1), (size_t) sizeof(Bookmark));
 }

 if (gBookmarkTable == ((void*)0)) {
  CloseBookmarkFile(infp);
  return (-1);
 }

 for (i=0; i<nb; i++) {
  if (GetNextBookmark(infp, gBookmarkTable + i) < 0) {
   break;
  }
 }
 gNumBookmarks = i;

 CloseBookmarkFile(infp);
 SortBookmarks();
 return (0);
}
