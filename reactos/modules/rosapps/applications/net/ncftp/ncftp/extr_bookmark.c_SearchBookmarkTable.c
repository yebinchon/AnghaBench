
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BookmarkPtr ;
typedef int Bookmark ;


 int BookmarkSearchProc ;
 scalar_t__ bsearch (char const*,int ,size_t,int,int ) ;
 int gBookmarkTable ;
 scalar_t__ gNumBookmarks ;

BookmarkPtr
SearchBookmarkTable(const char *key)
{
 return ((BookmarkPtr) bsearch(key, gBookmarkTable, (size_t) gNumBookmarks, sizeof(Bookmark), BookmarkSearchProc));
}
