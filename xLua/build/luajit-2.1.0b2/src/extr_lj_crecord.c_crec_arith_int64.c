
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int postproc; } ;
typedef TYPE_1__ jit_State ;
struct TYPE_11__ {scalar_t__ i; } ;
struct TYPE_10__ {int info; int size; } ;
typedef int TRef ;
typedef int MSize ;
typedef scalar_t__ MMS ;
typedef scalar_t__ IRType ;
typedef scalar_t__ IROp ;
typedef int CTypeID ;
typedef TYPE_2__ CType ;


 int CTF_FP ;
 int CTF_UNSIGNED ;
 int CTID_INT64 ;
 int CTID_UINT64 ;
 TYPE_8__* IR (int ) ;
 int IRCONV_ANY ;
 int IRCONV_SEXT ;
 int IRT (scalar_t__,scalar_t__) ;
 int IRTG (scalar_t__,scalar_t__) ;
 scalar_t__ IRT_CDATA ;
 scalar_t__ IRT_FLOAT ;
 scalar_t__ IRT_I64 ;
 scalar_t__ IRT_INT ;
 scalar_t__ IRT_NUM ;
 scalar_t__ IRT_U32 ;
 scalar_t__ IRT_U64 ;
 scalar_t__ IR_ADD ;
 scalar_t__ IR_CNEWI ;
 scalar_t__ IR_EQ ;
 scalar_t__ IR_LE ;
 scalar_t__ IR_LT ;
 scalar_t__ IR_ULT ;
 int LJ_POST_FIXGUARD ;
 scalar_t__ MM_add ;
 scalar_t__ MM_eq ;
 scalar_t__ MM_lt ;
 int TREF_TRUE ;
 scalar_t__ ctype_isnum (int) ;
 int emitconv (int ,scalar_t__,scalar_t__,int ) ;
 int emitir (int ,int ,int ) ;
 int lj_ir_kint (TYPE_1__*,int ) ;
 int lj_ir_set (TYPE_1__*,int ,int ,int ) ;
 int lj_needsplit (TYPE_1__*) ;
 scalar_t__ tref_isk (int ) ;
 int tref_ref (int ) ;
 scalar_t__ tref_type (int ) ;

__attribute__((used)) static TRef crec_arith_int64(jit_State *J, TRef *sp, CType **s, MMS mm)
{
  if (ctype_isnum(s[0]->info) && ctype_isnum(s[1]->info)) {
    IRType dt;
    CTypeID id;
    TRef tr;
    MSize i;
    IROp op;
    lj_needsplit(J);
    if (((s[0]->info & CTF_UNSIGNED) && s[0]->size == 8) ||
 ((s[1]->info & CTF_UNSIGNED) && s[1]->size == 8)) {
      dt = IRT_U64; id = CTID_UINT64;
    } else {
      dt = IRT_I64; id = CTID_INT64;
      if (mm < MM_add &&
   !((s[0]->info | s[1]->info) & CTF_FP) &&
   s[0]->size == 4 && s[1]->size == 4) {
 if (!((s[0]->info ^ s[1]->info) & CTF_UNSIGNED) ||
     (tref_isk(sp[1]) && IR(tref_ref(sp[1]))->i >= 0)) {
   dt = (s[0]->info & CTF_UNSIGNED) ? IRT_U32 : IRT_INT;
   goto comp;
 } else if (tref_isk(sp[0]) && IR(tref_ref(sp[0]))->i >= 0) {
   dt = (s[1]->info & CTF_UNSIGNED) ? IRT_U32 : IRT_INT;
   goto comp;
 }
      }
    }
    for (i = 0; i < 2; i++) {
      IRType st = tref_type(sp[i]);
      if (st == IRT_NUM || st == IRT_FLOAT)
 sp[i] = emitconv(sp[i], dt, st, IRCONV_ANY);
      else if (!(st == IRT_I64 || st == IRT_U64))
 sp[i] = emitconv(sp[i], dt, IRT_INT,
    (s[i]->info & CTF_UNSIGNED) ? 0 : IRCONV_SEXT);
    }
    if (mm < MM_add) {
    comp:

      if (mm == MM_eq) {
 op = IR_EQ;
      } else {
 op = mm == MM_lt ? IR_LT : IR_LE;
 if (dt == IRT_U32 || dt == IRT_U64)
   op += (IR_ULT-IR_LT);
      }
      lj_ir_set(J, IRTG(op, dt), sp[0], sp[1]);
      J->postproc = LJ_POST_FIXGUARD;
      return TREF_TRUE;
    } else {
      tr = emitir(IRT(mm+(int)IR_ADD-(int)MM_add, dt), sp[0], sp[1]);
    }
    return emitir(IRTG(IR_CNEWI, IRT_CDATA), lj_ir_kint(J, id), tr);
  }
  return 0;
}
