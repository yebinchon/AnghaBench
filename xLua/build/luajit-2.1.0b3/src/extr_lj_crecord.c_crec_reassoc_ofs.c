
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ jit_State ;
struct TYPE_9__ {scalar_t__ u64; } ;
struct TYPE_8__ {scalar_t__ o; int op1; scalar_t__ i; int op2; } ;
typedef int TRef ;
typedef int MSize ;
typedef TYPE_2__ IRIns ;


 TYPE_2__* IR (int ) ;
 scalar_t__ IR_ADD ;
 scalar_t__ IR_ADDOV ;
 scalar_t__ IR_KINT64 ;
 scalar_t__ IR_SUBOV ;
 int JIT_F_OPT_FOLD ;
 scalar_t__ LJ_64 ;
 scalar_t__ LJ_LIKELY (int) ;
 TYPE_3__* ir_kint64 (TYPE_2__*) ;
 scalar_t__ irref_isk (int ) ;
 int tref_ref (int ) ;

__attribute__((used)) static TRef crec_reassoc_ofs(jit_State *J, TRef tr, ptrdiff_t *ofsp, MSize sz)
{
  IRIns *ir = IR(tref_ref(tr));
  if (LJ_LIKELY(J->flags & JIT_F_OPT_FOLD) && irref_isk(ir->op2) &&
      (ir->o == IR_ADD || ir->o == IR_ADDOV || ir->o == IR_SUBOV)) {
    IRIns *irk = IR(ir->op2);
    ptrdiff_t k;
    if (LJ_64 && irk->o == IR_KINT64)
      k = (ptrdiff_t)ir_kint64(irk)->u64 * sz;
    else
      k = (ptrdiff_t)irk->i * sz;
    if (ir->o == IR_SUBOV) *ofsp -= k; else *ofsp += k;
    tr = ir->op1;
  }
  return tr;
}
