
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int allunits; } ;
typedef TYPE_1__ DwarfSym ;
typedef int Dwarf ;


 scalar_t__ dwarfenumunit (int *,int ,TYPE_1__*) ;

int
dwarfenum(Dwarf *d, DwarfSym *s)
{
 if(dwarfenumunit(d, 0, s) < 0)
  return -1;
 s->allunits = 1;
 return 0;
}
