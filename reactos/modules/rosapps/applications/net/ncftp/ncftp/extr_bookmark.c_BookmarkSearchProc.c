
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bookmarkName; } ;
typedef TYPE_1__ Bookmark ;


 int ISTRCMP (char*,int ) ;

__attribute__((used)) static int
BookmarkSearchProc(const void *key, const void *b)
{
 return (ISTRCMP((char *) key, (*(Bookmark *)b).bookmarkName));
}
