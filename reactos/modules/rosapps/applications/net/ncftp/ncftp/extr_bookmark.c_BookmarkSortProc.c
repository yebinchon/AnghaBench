
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bookmarkName; } ;
typedef TYPE_1__ Bookmark ;


 int ISTRCMP (int ,int ) ;

__attribute__((used)) static int
BookmarkSortProc(const void *a, const void *b)
{
 return (ISTRCMP((*(Bookmark *)a).bookmarkName, (*(Bookmark *)b).bookmarkName));
}
