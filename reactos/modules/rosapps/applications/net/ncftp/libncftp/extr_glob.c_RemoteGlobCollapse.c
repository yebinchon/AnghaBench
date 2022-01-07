
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char* string ;
typedef int patPrefix ;
struct TYPE_8__ {TYPE_1__* first; } ;
struct TYPE_7__ {char* line; struct TYPE_7__* next; } ;
typedef TYPE_1__* LinePtr ;
typedef TYPE_2__* LineListPtr ;


 TYPE_1__* RemoveLine (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ STREQ (char*,char*) ;
 int STRNCPY (char*,char*) ;
 char* kGlobChars ;
 int sprintf (char*,char*,char*,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strncmp (char*,char*,size_t) ;

__attribute__((used)) static void
RemoteGlobCollapse(const char *pattern, LineListPtr fileList)
{
 LinePtr lp, nextLine;
 string patPrefix;
 string cur, prev;
 char *endp, *cp, *dp;
 const char *pp;
 int wasGlobChar;
 size_t plen;


 dp = patPrefix;
 endp = dp + sizeof(patPrefix) - 1;
 wasGlobChar = 0;
 for (cp = (char *) pattern; dp < endp; ) {
  for (pp=kGlobChars; *pp != '\0'; pp++) {
   if (*pp == *cp) {
    wasGlobChar = 1;
    break;
   }
  }
  if (wasGlobChar)
   break;
  *dp++ = *cp++;
 }
 *dp = '\0';
 plen = (size_t) (dp - patPrefix);

 *prev = '\0';
 for (lp=fileList->first; lp != ((void*)0); lp = nextLine) {
  nextLine = lp->next;
  if (strncmp(lp->line, patPrefix, plen) == 0) {
   (void) STRNCPY(cur, lp->line + plen);
   cp = strchr(cur, '/');
   if (cp == ((void*)0))
    cp = strchr(cur, '\\');
   if (cp != ((void*)0))
    *cp = '\0';
   if ((*prev != '\0') && (STREQ(cur, prev))) {
    nextLine = RemoveLine(fileList, lp);
   } else {
    (void) STRNCPY(prev, cur);






    (void) sprintf(lp->line, "%s%s", patPrefix, cur);
   }
  }
 }
}
