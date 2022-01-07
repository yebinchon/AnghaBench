
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; } ;
typedef TYPE_1__ jit_State ;
typedef int TValue ;
typedef int TRef ;


 int IRFPM_FLOOR ;
 int IRTGI (int ) ;
 int IRTI (int ) ;
 int IRTN (int ) ;
 int IR_DIV ;
 int IR_FPMATH ;
 int IR_MOD ;
 int IR_MUL ;
 int IR_NE ;
 int IR_SUB ;
 int JIT_F_OPT_NARROW ;
 scalar_t__ LJ_DUALNUM ;
 int LJ_TRERR_BADTYPE ;
 int emitir (int ,int ,int ) ;
 scalar_t__ intV (int *) ;
 int lj_ir_kint (TYPE_1__*,int ) ;
 int lj_ir_tonum (TYPE_1__*,int ) ;
 int lj_strscan_num (int ,int *) ;
 int lj_trace_err (TYPE_1__*,int ) ;
 int strV (int *) ;
 scalar_t__ tref_isinteger (int ) ;
 scalar_t__ tvisint (int *) ;
 scalar_t__ tvisstr (int *) ;
 int tviszero (int *) ;

TRef lj_opt_narrow_mod(jit_State *J, TRef rb, TRef rc, TValue *vc)
{
  TRef tmp;
  if (tvisstr(vc) && !lj_strscan_num(strV(vc), vc))
    lj_trace_err(J, LJ_TRERR_BADTYPE);
  if ((LJ_DUALNUM || (J->flags & JIT_F_OPT_NARROW)) &&
      tref_isinteger(rb) && tref_isinteger(rc) &&
      (tvisint(vc) ? intV(vc) != 0 : !tviszero(vc))) {
    emitir(IRTGI(IR_NE), rc, lj_ir_kint(J, 0));
    return emitir(IRTI(IR_MOD), rb, rc);
  }

  rb = lj_ir_tonum(J, rb);
  rc = lj_ir_tonum(J, rc);
  tmp = emitir(IRTN(IR_DIV), rb, rc);
  tmp = emitir(IRTN(IR_FPMATH), tmp, IRFPM_FLOOR);
  tmp = emitir(IRTN(IR_MUL), tmp, rc);
  return emitir(IRTN(IR_SUB), rb, tmp);
}
