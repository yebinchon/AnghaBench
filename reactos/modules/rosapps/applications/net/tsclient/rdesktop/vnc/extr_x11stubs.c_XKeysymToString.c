
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ keysym; char const* string; } ;
typedef scalar_t__ KeySym ;


 scalar_t__ NoSymbol ;
 TYPE_1__* StringToKeysym ;

const char *
XKeysymToString(KeySym keysym)
{
 int i;
 for (i = 0; StringToKeysym[i].keysym != NoSymbol
      && StringToKeysym[i].keysym != keysym; i++);
 return StringToKeysym[i].string;
}
