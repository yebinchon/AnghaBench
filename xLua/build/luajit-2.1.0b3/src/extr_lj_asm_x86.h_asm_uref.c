
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_9__ {int v; } ;
struct TYPE_13__ {TYPE_1__ uv; } ;
struct TYPE_10__ {int * uvptr; } ;
struct TYPE_12__ {TYPE_2__ l; } ;
struct TYPE_11__ {int op2; scalar_t__ o; int op1; } ;
typedef int Reg ;
typedef int MRef ;
typedef TYPE_3__ IRIns ;
typedef TYPE_4__ GCfunc ;
typedef int ASMState ;


 int CC_NE ;
 int GCfuncL ;
 int GCupval ;
 int IR (int ) ;
 scalar_t__ IR_UREFC ;
 int REX_GC64 ;
 int RSET_GPR ;
 int XO_ARITHib ;
 int XO_LEA ;
 int XO_MOV ;
 int XOg_CMP ;
 int asm_guardcc (int *,int ) ;
 int closed ;
 int emit_i8 (int *,int) ;
 int emit_rma (int *,int ,int,int *) ;
 int emit_rmro (int *,int ,int,int,int) ;
 TYPE_7__* gcref (int ) ;
 TYPE_4__* ir_kfunc (int ) ;
 scalar_t__ irref_isk (int ) ;
 int offsetof (int ,int ) ;
 int ra_alloc1 (int *,int ,int ) ;
 int ra_dest (int *,TYPE_3__*,int ) ;
 int ra_scratch (int *,int ) ;
 int tv ;
 int uvptr ;
 int v ;

__attribute__((used)) static void asm_uref(ASMState *as, IRIns *ir)
{
  Reg dest = ra_dest(as, ir, RSET_GPR);
  if (irref_isk(ir->op1)) {
    GCfunc *fn = ir_kfunc(IR(ir->op1));
    MRef *v = &gcref(fn->l.uvptr[(ir->op2 >> 8)])->uv.v;
    emit_rma(as, XO_MOV, dest|REX_GC64, v);
  } else {
    Reg uv = ra_scratch(as, RSET_GPR);
    Reg func = ra_alloc1(as, ir->op1, RSET_GPR);
    if (ir->o == IR_UREFC) {
      emit_rmro(as, XO_LEA, dest|REX_GC64, uv, offsetof(GCupval, tv));
      asm_guardcc(as, CC_NE);
      emit_i8(as, 1);
      emit_rmro(as, XO_ARITHib, XOg_CMP, uv, offsetof(GCupval, closed));
    } else {
      emit_rmro(as, XO_MOV, dest|REX_GC64, uv, offsetof(GCupval, v));
    }
    emit_rmro(as, XO_MOV, uv|REX_GC64, func,
       (int32_t)offsetof(GCfuncL, uvptr) +
       (int32_t)sizeof(MRef) * (int32_t)(ir->op2 >> 8));
  }
}
