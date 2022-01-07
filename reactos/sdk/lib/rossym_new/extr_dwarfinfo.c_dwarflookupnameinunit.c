
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_7__ {scalar_t__ name; } ;
struct TYPE_8__ {TYPE_1__ attrs; } ;
typedef TYPE_2__ DwarfSym ;
typedef int Dwarf ;


 scalar_t__ dwarfenumunit (int *,int ,TYPE_2__*) ;
 scalar_t__ dwarfnextsymat (int *,TYPE_2__*,TYPE_2__*) ;
 scalar_t__ strcmp (scalar_t__,char*) ;
 int werrstr (char*,char*,...) ;

int
dwarflookupnameinunit(Dwarf *d, ulong unit, char *name, DwarfSym *s)
{
    DwarfSym compunit = { };
    if(dwarfenumunit(d, unit, &compunit) < 0)
        return -1;
    while(dwarfnextsymat(d, &compunit, s) == 0) {
        werrstr("got %s looking for %s\n", s->attrs.name, name);
        if(s->attrs.name && strcmp(s->attrs.name, name) == 0)
            return 0;
    }
    werrstr("symbol '%s' not found", name);
    return -1;
}
