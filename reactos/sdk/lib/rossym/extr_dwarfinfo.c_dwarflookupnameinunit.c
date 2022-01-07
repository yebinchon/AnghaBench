
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_6__ {scalar_t__ name; } ;
struct TYPE_7__ {TYPE_1__ attrs; } ;
typedef TYPE_2__ DwarfSym ;
typedef int Dwarf ;


 scalar_t__ dwarfenumunit (int *,int ,TYPE_2__*) ;
 int dwarfnextsymat (int *,TYPE_2__*,int) ;
 scalar_t__ strcmp (scalar_t__,char*) ;
 int werrstr (char*,char*) ;

int
dwarflookupnameinunit(Dwarf *d, ulong unit, char *name, DwarfSym *s)
{
 if(dwarfenumunit(d, unit, s) < 0)
  return -1;

 dwarfnextsymat(d, s, 0);
 while(dwarfnextsymat(d, s, 1) == 1)
  if(s->attrs.name && strcmp(s->attrs.name, name) == 0)
   return 0;
 werrstr("symbol '%s' not found", name);
 return -1;
}
