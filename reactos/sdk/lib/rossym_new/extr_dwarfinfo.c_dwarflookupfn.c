
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ulong ;
struct TYPE_7__ {scalar_t__ tag; scalar_t__ lowpc; scalar_t__ highpc; } ;
struct TYPE_8__ {TYPE_1__ attrs; } ;
typedef TYPE_2__ DwarfSym ;
typedef int Dwarf ;


 scalar_t__ TagSubprogram ;
 scalar_t__ dwarfenumunit (int *,scalar_t__,TYPE_2__*) ;
 scalar_t__ dwarfnextsymat (int *,TYPE_2__*,TYPE_2__*) ;
 int werrstr (char*,scalar_t__) ;

int
dwarflookupfn(Dwarf *d, ulong unit, ulong pc, DwarfSym *s)
{
    DwarfSym compunit = { };
    if(dwarfenumunit(d, unit, &compunit) < 0)
        return -1;
    while(dwarfnextsymat(d, &compunit, s) == 0){
        if(s->attrs.tag != TagSubprogram)
            continue;
        if(s->attrs.lowpc <= pc && pc < s->attrs.highpc)
            return 0;
    }
    werrstr("fn containing pc 0x%lux not found", pc);
    return -1;
}
