
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ name; } ;
struct TYPE_8__ {TYPE_1__ attrs; } ;
typedef TYPE_2__ DwarfSym ;
typedef int Dwarf ;


 scalar_t__ dwarfnextsymat (int *,TYPE_2__*,TYPE_2__*) ;
 scalar_t__ strcmp (scalar_t__,char*) ;
 int werrstr (char*,char*) ;

int
dwarflookupsubname(Dwarf *d, DwarfSym *parent, char *name, DwarfSym *s)
{
    *s = *parent;
    while(dwarfnextsymat(d, parent, s))
        if(s->attrs.name && strcmp(s->attrs.name, name) == 0)
            return 0;
    werrstr("symbol '%s' not found", name);
    return -1;
}
