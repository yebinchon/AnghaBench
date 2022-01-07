
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int t; } ;
typedef int RegSet ;
typedef int Reg ;
typedef int IRRef ;
typedef int ASMState ;


 TYPE_1__* IR (int ) ;
 int asm_fuseload (int *,int ,int ) ;
 int irt_is64 (int ) ;
 int ra_alloc1 (int *,int ,int ) ;

__attribute__((used)) static Reg asm_fuseloadm(ASMState *as, IRRef ref, RegSet allow, int is64)
{
  if (is64 && !irt_is64(IR(ref)->t))
    return ra_alloc1(as, ref, allow);
  return asm_fuseload(as, ref, allow);
}
