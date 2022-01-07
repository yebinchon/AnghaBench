
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_8__ {int tag; } ;
struct TYPE_9__ {TYPE_1__ attrs; } ;
typedef TYPE_2__ DwarfSym ;
typedef int Dwarf ;


 scalar_t__ dwarfenumunit (int *,int ,TYPE_2__*) ;
 scalar_t__ dwarflookupchildtag (int *,TYPE_2__*,int ,TYPE_2__*) ;
 scalar_t__ dwarfnextsym (int *,TYPE_2__*) ;
 int werrstr (char*,int ) ;

int
dwarflookuptag(Dwarf *d, ulong unit, ulong tag, DwarfSym *s)
{
    DwarfSym compunit = { };
    if (dwarfenumunit(d, unit, &compunit) < 0) {
        return -1;
    }
    do {
        if (compunit.attrs.tag == tag) {
            *s = compunit;
            return 0;
        }
        if (dwarflookupchildtag(d, &compunit, tag, s) == 0)
            return 0;
    } while(dwarfnextsym(d, &compunit) == 0);
    werrstr("symbol with tag 0x%lux not found", tag);
    return -1;
}
