
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Bookmark ;


 int BookmarkSortProc ;
 int * gBookmarkTable ;
 int gNumBookmarks ;
 int qsort (int *,size_t,int,int ) ;

void
SortBookmarks(void)
{
 if ((gBookmarkTable == ((void*)0)) || (gNumBookmarks < 2))
  return;







 qsort(gBookmarkTable, (size_t) gNumBookmarks, sizeof(Bookmark), BookmarkSortProc);
}
