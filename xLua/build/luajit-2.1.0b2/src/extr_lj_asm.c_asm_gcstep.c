
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int gcsteps; scalar_t__ stopins; } ;
struct TYPE_8__ {scalar_t__ o; } ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ ASMState ;


 TYPE_1__* IR (scalar_t__) ;
 scalar_t__ IR_CNEW ;
 scalar_t__ IR_CNEWI ;
 scalar_t__ IR_TDUP ;
 scalar_t__ IR_TNEW ;
 scalar_t__ LJ_HASFFI ;
 int asm_gc_check (TYPE_2__*) ;
 scalar_t__ ra_used (TYPE_1__*) ;

__attribute__((used)) static void asm_gcstep(ASMState *as, IRIns *ir)
{
  IRIns *ira;
  for (ira = IR(as->stopins+1); ira < ir; ira++)
    if ((ira->o == IR_TNEW || ira->o == IR_TDUP ||
  (LJ_HASFFI && (ira->o == IR_CNEW || ira->o == IR_CNEWI))) &&
 ra_used(ira))
      as->gcsteps++;
  if (as->gcsteps)
    asm_gc_check(as);
  as->gcsteps = 0x80000000;
}
