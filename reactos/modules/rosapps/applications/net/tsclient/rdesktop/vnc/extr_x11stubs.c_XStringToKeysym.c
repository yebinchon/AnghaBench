
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ keysym; int string; } ;
typedef scalar_t__ KeySym ;


 scalar_t__ NoSymbol ;
 TYPE_1__* StringToKeysym ;
 scalar_t__ strcmp (int ,char const*) ;

KeySym
XStringToKeysym(const char *str)
{
 int i;
 for (i = 0; StringToKeysym[i].keysym != NoSymbol
      && strcmp(StringToKeysym[i].string, str); i++);
 return StringToKeysym[i].keysym;
}
