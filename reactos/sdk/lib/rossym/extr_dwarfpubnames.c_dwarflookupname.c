
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pubnames; } ;
typedef int DwarfSym ;
typedef TYPE_1__ Dwarf ;


 int _dwarfnametounit (TYPE_1__*,char*,int *,int *) ;

int
dwarflookupname(Dwarf *d, char *name, DwarfSym *sym)
{
 return _dwarfnametounit(d, name, &d->pubnames, sym);
}
