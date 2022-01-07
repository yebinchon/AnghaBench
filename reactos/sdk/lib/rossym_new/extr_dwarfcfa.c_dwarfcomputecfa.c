
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ulong ;
struct TYPE_6__ {int type; size_t reg; scalar_t__ offset; } ;
struct TYPE_5__ {scalar_t__* Registers; } ;
typedef TYPE_1__* PROSSYM_REGISTERS ;
typedef TYPE_2__ DwarfExpr ;
typedef int Dwarf ;



 int werrstr (char*,int,...) ;

int dwarfcomputecfa(Dwarf *d, DwarfExpr *cfa, PROSSYM_REGISTERS registers, ulong *cfaLocation)
{
    switch (cfa->type) {
    case 128:
        *cfaLocation = registers->Registers[cfa->reg] + cfa->offset;
        werrstr("cfa reg %d (%x) offset %x = %x", cfa->reg, (ulong)registers->Registers[cfa->reg], cfa->offset, cfaLocation);
        break;
    default:
        werrstr("cfa->type %x", cfa->type);
        return -1;
    }

    return 0;
}
