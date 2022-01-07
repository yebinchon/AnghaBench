
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int jit_State ;
typedef scalar_t__ int32_t ;
struct TYPE_4__ {scalar_t__ hi; } ;
struct TYPE_5__ {double n; TYPE_1__ u32; } ;
typedef int TValue ;
typedef int TRef ;


 int IR (int ) ;
 int IRCONV_CHECK ;
 int IRCONV_INT_NUM ;
 int IRFPM_EXP2 ;
 int IRFPM_LOG2 ;
 int IRFPM_SQRT ;
 int IRTGI (int ) ;
 int IRTI (int ) ;
 int IRTN (int ) ;
 int IR_ADD ;
 int IR_CONV ;
 int IR_FPMATH ;
 int IR_MUL ;
 int IR_POW ;
 int IR_ULE ;
 int conv_str_tonum (int *,int,int *) ;
 int emitir (int ,int,int) ;
 TYPE_2__* ir_knum (int ) ;
 int lj_ir_kint (int *,int) ;
 int lj_ir_tonum (int *,int) ;
 int numV (int *) ;
 scalar_t__ numberVint (int *) ;
 scalar_t__ numisint (int ) ;
 int tref_isinteger (int) ;
 scalar_t__ tref_isk (int) ;
 int tref_ref (int) ;
 scalar_t__ tvisint (int *) ;
 scalar_t__ tvispone (TYPE_2__*) ;

TRef lj_opt_narrow_pow(jit_State *J, TRef rb, TRef rc, TValue *vb, TValue *vc)
{
  rb = conv_str_tonum(J, rb, vb);
  rb = lj_ir_tonum(J, rb);
  rc = conv_str_tonum(J, rc, vc);

  if (tvisint(vc) || numisint(numV(vc))) {
    int checkrange = 0;

    if (tref_isk(rb) && (int32_t)ir_knum(IR(tref_ref(rb)))->u32.hi >= 0) {
      int32_t k = numberVint(vc);
      if (!(k >= -65536 && k <= 65536)) goto split_pow;
      checkrange = 1;
    }
    if (!tref_isinteger(rc)) {

      rc = emitir(IRTGI(IR_CONV), rc, IRCONV_INT_NUM|IRCONV_CHECK);
    }
    if (checkrange && !tref_isk(rc)) {
      TRef tmp = emitir(IRTI(IR_ADD), rc, lj_ir_kint(J, 65536));
      emitir(IRTGI(IR_ULE), tmp, lj_ir_kint(J, 2*65536));
    }
    return emitir(IRTN(IR_POW), rb, rc);
  }
split_pow:

  if (tref_isk(rb) && tvispone(ir_knum(IR(tref_ref(rb)))))
    return rb;
  rc = lj_ir_tonum(J, rc);
  if (tref_isk(rc) && ir_knum(IR(tref_ref(rc)))->n == 0.5)
    return emitir(IRTN(IR_FPMATH), rb, IRFPM_SQRT);

  rb = emitir(IRTN(IR_FPMATH), rb, IRFPM_LOG2);
  rc = emitir(IRTN(IR_MUL), rb, rc);
  return emitir(IRTN(IR_FPMATH), rc, IRFPM_EXP2);
}
