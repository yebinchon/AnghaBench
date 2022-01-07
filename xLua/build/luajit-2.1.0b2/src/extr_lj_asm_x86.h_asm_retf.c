
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_14__ {int t; } ;
struct TYPE_13__ {scalar_t__ topslot; } ;
struct TYPE_12__ {int op2; } ;
typedef int Reg ;
typedef TYPE_1__ IRIns ;
typedef scalar_t__ BCReg ;
typedef int BCIns ;
typedef TYPE_2__ ASMState ;


 int CC_NE ;
 TYPE_4__* IR (int ) ;
 scalar_t__ LJ_FR2 ;
 int REF_BASE ;
 int RSET_GPR ;
 int XG_ARITHi (int ) ;
 int XOg_CMP ;
 int asm_guardcc (TYPE_2__*,int ) ;
 scalar_t__ bc_a (int const) ;
 int emit_addptr (TYPE_2__*,int ,int) ;
 int emit_gmroi (TYPE_2__*,int ,int ,int,int ) ;
 int emit_setgl (TYPE_2__*,int ,int ) ;
 void* ir_kptr (TYPE_4__*) ;
 int irt_setmark (int ) ;
 int jit_base ;
 int ptr2addr (void*) ;
 int ra_alloc1 (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void asm_retf(ASMState *as, IRIns *ir)
{
  Reg base = ra_alloc1(as, REF_BASE, RSET_GPR);
  void *pc = ir_kptr(IR(ir->op2));
  int32_t delta = 1+LJ_FR2+bc_a(*((const BCIns *)pc - 1));
  as->topslot -= (BCReg)delta;
  if ((int32_t)as->topslot < 0) as->topslot = 0;
  irt_setmark(IR(REF_BASE)->t);
  emit_setgl(as, base, jit_base);
  emit_addptr(as, base, -8*delta);
  asm_guardcc(as, CC_NE);
  emit_gmroi(as, XG_ARITHi(XOg_CMP), base, -4, ptr2addr(pc));
}
