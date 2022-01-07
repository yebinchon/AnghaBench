
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int varname; } ;


 scalar_t__ ISTRNCMP (int ,char const*,size_t) ;
 char* StrDup (int ) ;
 int gNumPrefOpts ;
 TYPE_1__* gPrefOpts ;
 size_t strlen (char const*) ;

__attribute__((used)) static char *
PrefOptCompletionFunction(const char *text, int state)
{
 char *cp;
 size_t textlen;
 int i, matches;

 if (state >= gNumPrefOpts)
  return (((void*)0));

 textlen = strlen(text);
 if (textlen == 0) {
  cp = StrDup(gPrefOpts[state].varname);
 } else {
  cp = ((void*)0);
  for (i=0, matches=0; i<gNumPrefOpts; i++) {
   if (ISTRNCMP(gPrefOpts[i].varname, text, textlen) == 0) {
    if (matches >= state) {
     cp = StrDup(gPrefOpts[i].varname);
     break;
    }
    matches++;
   }
  }
 }
 return cp;
}
