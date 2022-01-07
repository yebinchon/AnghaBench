
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jit_State ;
typedef int TValue ;
typedef int TRef ;
typedef scalar_t__ IROp ;


 int IRCONV_NUM_INT ;
 int IRTG (int ,int ) ;
 int IRTGI (int) ;
 int IRTN (scalar_t__) ;
 int IRT_NUM ;
 scalar_t__ IR_ADD ;
 scalar_t__ IR_ADDOV ;
 scalar_t__ IR_CONV ;
 scalar_t__ IR_MUL ;
 int IR_STRTO ;
 scalar_t__ IR_SUB ;
 scalar_t__ LJ_DUALNUM ;
 int emitir (int ,int ,int ) ;
 int lj_strscan_num (int ,int *) ;
 int lj_vm_foldarith (int ,int ,int) ;
 int numberVnum (int *) ;
 scalar_t__ numisint (int ) ;
 int strV (int *) ;
 scalar_t__ tref_isinteger (int ) ;
 int tref_isnum (int ) ;
 scalar_t__ tref_isstr (int ) ;

TRef lj_opt_narrow_arith(jit_State *J, TRef rb, TRef rc,
    TValue *vb, TValue *vc, IROp op)
{
  if (tref_isstr(rb)) {
    rb = emitir(IRTG(IR_STRTO, IRT_NUM), rb, 0);
    lj_strscan_num(strV(vb), vb);
  }
  if (tref_isstr(rc)) {
    rc = emitir(IRTG(IR_STRTO, IRT_NUM), rc, 0);
    lj_strscan_num(strV(vc), vc);
  }

  if ((op >= IR_ADD && op <= (LJ_DUALNUM ? IR_MUL : IR_SUB)) &&
      tref_isinteger(rb) && tref_isinteger(rc) &&
      numisint(lj_vm_foldarith(numberVnum(vb), numberVnum(vc),
          (int)op - (int)IR_ADD)))
    return emitir(IRTGI((int)op - (int)IR_ADD + (int)IR_ADDOV), rb, rc);
  if (!tref_isnum(rb)) rb = emitir(IRTN(IR_CONV), rb, IRCONV_NUM_INT);
  if (!tref_isnum(rc)) rc = emitir(IRTN(IR_CONV), rc, IRCONV_NUM_INT);
  return emitir(IRTN(op), rb, rc);
}
