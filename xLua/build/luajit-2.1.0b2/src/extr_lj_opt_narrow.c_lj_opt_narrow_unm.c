
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int jit_State ;
typedef int TValue ;
typedef int TRef ;


 int IRCONV_NUM_INT ;
 int IRTG (int ,int ) ;
 int IRTGI (int ) ;
 int IRTN (int ) ;
 int IRT_NUM ;
 int IR_CONV ;
 int IR_NEG ;
 int IR_STRTO ;
 int IR_SUBOV ;
 int emitir (int ,int ,int ) ;
 int lj_ir_kint (int *,int ) ;
 int lj_ir_knum_neg (int *) ;
 int lj_strscan_num (int ,int *) ;
 scalar_t__ numberVint (int *) ;
 int strV (int *) ;
 scalar_t__ tref_isinteger (int ) ;
 scalar_t__ tref_isstr (int ) ;

TRef lj_opt_narrow_unm(jit_State *J, TRef rc, TValue *vc)
{
  if (tref_isstr(rc)) {
    rc = emitir(IRTG(IR_STRTO, IRT_NUM), rc, 0);
    lj_strscan_num(strV(vc), vc);
  }
  if (tref_isinteger(rc)) {
    if ((uint32_t)numberVint(vc) != 0x80000000u)
      return emitir(IRTGI(IR_SUBOV), lj_ir_kint(J, 0), rc);
    rc = emitir(IRTN(IR_CONV), rc, IRCONV_NUM_INT);
  }
  return emitir(IRTN(IR_NEG), rc, lj_ir_knum_neg(J));
}
