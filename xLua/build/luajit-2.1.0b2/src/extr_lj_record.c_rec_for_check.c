
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int jit_State ;
typedef scalar_t__ int32_t ;
struct TYPE_2__ {scalar_t__ i; } ;
typedef int TRef ;
typedef scalar_t__ IRType ;


 TYPE_1__* IR (int ) ;
 int IRTG (int ,scalar_t__) ;
 int IRTGI (int ) ;
 int IRTI (int ) ;
 scalar_t__ IRT_INT ;
 int IR_ADDOV ;
 int IR_GE ;
 int IR_LE ;
 int IR_LT ;
 int IR_USE ;
 int emitir (int ,int ,int ) ;
 int lj_ir_kint (int *,scalar_t__) ;
 int lj_ir_knum_zero (int *) ;
 scalar_t__ tref_isk (int ) ;
 int tref_ref (int ) ;

__attribute__((used)) static void rec_for_check(jit_State *J, IRType t, int dir,
     TRef stop, TRef step, int init)
{
  if (!tref_isk(step)) {

    TRef zero = (t == IRT_INT) ? lj_ir_kint(J, 0) : lj_ir_knum_zero(J);
    emitir(IRTG(dir ? IR_GE : IR_LT, t), step, zero);

    if (init && t == IRT_INT) {
      if (tref_isk(stop)) {

 int32_t k = IR(tref_ref(stop))->i;
 if (dir) {
   if (k > 0)
     emitir(IRTGI(IR_LE), step, lj_ir_kint(J, (int32_t)0x7fffffff-k));
 } else {
   if (k < 0)
     emitir(IRTGI(IR_GE), step, lj_ir_kint(J, (int32_t)0x80000000-k));
 }
      } else {

 TRef tr = emitir(IRTGI(IR_ADDOV), step, stop);
 emitir(IRTI(IR_USE), tr, 0);
      }
    }
  } else if (init && t == IRT_INT && !tref_isk(stop)) {

    int32_t k = IR(tref_ref(step))->i;
    k = (int32_t)(dir ? 0x7fffffff : 0x80000000) - k;
    emitir(IRTGI(dir ? IR_LE : IR_GE), stop, lj_ir_kint(J, k));
  }
}
