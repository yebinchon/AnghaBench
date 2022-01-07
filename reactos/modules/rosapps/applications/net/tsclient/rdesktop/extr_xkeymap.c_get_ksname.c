
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;


 scalar_t__ NoSymbol ;
 char* XKeysymToString (scalar_t__) ;

char *
get_ksname(uint32 keysym)
{
 char *ksname = ((void*)0);

 if (keysym == NoSymbol)
  ksname = "NoSymbol";
 else if (!(ksname = XKeysymToString(keysym)))
  ksname = "(no name)";

 return ksname;
}
