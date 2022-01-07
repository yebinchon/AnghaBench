
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__* CommandPtr ;


 TYPE_1__* GetCommandByIndex (int) ;
 scalar_t__ ISTRNCMP (int ,char const*,size_t) ;
 char* StrDup (int ) ;
 TYPE_1__* kNoCommand ;
 size_t strlen (char const*) ;

__attribute__((used)) static char *
CommandCompletionFunction(const char *text, int state)
{
 char *cp;
 size_t textlen;
 int i, matches;
 CommandPtr cmdp;

 textlen = strlen(text);
 if (textlen == 0) {
  cp = ((void*)0);
 } else {
  cp = ((void*)0);
  for (i=0, matches=0; ; i++) {
   cmdp = GetCommandByIndex(i);
   if (cmdp == kNoCommand)
    break;
   if (ISTRNCMP(cmdp->name, text, textlen) == 0) {
    if (matches >= state) {
     cp = StrDup(cmdp->name);
     break;
    }
    matches++;
   }
  }
 }
 return cp;
}
