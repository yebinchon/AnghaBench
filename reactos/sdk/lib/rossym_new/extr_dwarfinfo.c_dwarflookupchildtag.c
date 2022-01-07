
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ulong ;
struct TYPE_8__ {scalar_t__ tag; scalar_t__ haskids; } ;
struct TYPE_9__ {TYPE_1__ attrs; } ;
typedef TYPE_2__ DwarfSym ;
typedef int Dwarf ;


 int dwarfnextsym (int *,TYPE_2__*) ;
 int dwarfnextsymat (int *,TYPE_2__*,TYPE_2__*) ;

int
dwarflookupchildtag(Dwarf *d, DwarfSym *parent, ulong tag, DwarfSym *s)
{
    int rsym = dwarfnextsymat(d, parent, s);
    while (rsym == 0 && s->attrs.tag != tag) {
        if (s->attrs.haskids) {
            DwarfSym p = *s;
            int csym = dwarflookupchildtag(d, &p, tag, s);
            if (csym == 0) {
                return csym;
            }
        }
        rsym = dwarfnextsym(d, s);
    }
    return rsym;
}
