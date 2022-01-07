
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int hookmask; } ;
struct TYPE_7__ {int J; } ;
typedef int IRIns ;
typedef TYPE_1__ ASMState ;


 int CC_NE ;
 int HOOK_PROFILE ;
 TYPE_6__* J2G (int ) ;
 int UNUSED (int *) ;
 int XO_GROUP3b ;
 int XOg_TEST ;
 int asm_guardcc (TYPE_1__*,int ) ;
 int emit_i8 (TYPE_1__*,int ) ;
 int emit_rma (TYPE_1__*,int ,int ,int *) ;

__attribute__((used)) static void asm_prof(ASMState *as, IRIns *ir)
{
  UNUSED(ir);
  asm_guardcc(as, CC_NE);
  emit_i8(as, HOOK_PROFILE);
  emit_rma(as, XO_GROUP3b, XOg_TEST, &J2G(as->J)->hookmask);
}
