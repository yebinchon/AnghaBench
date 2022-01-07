
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bookmarkName; } ;


 scalar_t__ ISTRNCMP (int ,char const*,size_t) ;
 char* StrDup (int ) ;
 TYPE_1__* gBookmarkTable ;
 int gNumBookmarks ;
 size_t strlen (char const*) ;

__attribute__((used)) static char *
BookmarkCompletionFunction(const char *text, int state)
{
 char *cp;
 size_t textlen;
 int i, matches;

 if ((gBookmarkTable == ((void*)0)) || (state >= gNumBookmarks))
  return (((void*)0));

 textlen = strlen(text);
 if (textlen == 0) {
  cp = StrDup(gBookmarkTable[state].bookmarkName);
 } else {
  cp = ((void*)0);
  for (i=0, matches=0; i<gNumBookmarks; i++) {
   if (ISTRNCMP(gBookmarkTable[i].bookmarkName, text, textlen) == 0) {
    if (matches >= state) {
     cp = StrDup(gBookmarkTable[i].bookmarkName);
     break;
    }
    matches++;
   }
  }
 }
 return cp;
}
