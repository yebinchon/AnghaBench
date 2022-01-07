
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_6__ {scalar_t__ type; } ;
typedef TYPE_1__ DwarfExpr ;
typedef int Dwarf ;


 scalar_t__ RuleSame ;
 scalar_t__ dwarfunwind (int *,int ,TYPE_1__*,TYPE_1__*,TYPE_1__*,int) ;
 int nelem (TYPE_1__*) ;
 int print (char*,...) ;

void
printrules(Dwarf *d, ulong pc)
{
 int i;
 DwarfExpr r[10];
 DwarfExpr cfa, ra;

 if(dwarfunwind(d, pc, &cfa, &ra, r, nelem(r)) < 0)
  print("\tcannot unwind from pc 0x%lux: %r\n", pc);

 print("\tpc=0x%lux cfa=%R ra=%R", pc, &cfa, &ra);
 for(i=0; i<nelem(r); i++)
  if(r[i].type != RuleSame)
   print(" r%d=%R", i, &r[i]);
 print("\n");
}
