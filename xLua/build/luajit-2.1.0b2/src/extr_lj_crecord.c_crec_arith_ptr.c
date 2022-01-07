
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int postproc; } ;
typedef TYPE_1__ jit_State ;
struct TYPE_10__ {int info; } ;
typedef int TRef ;
typedef scalar_t__ MMS ;
typedef scalar_t__ IRType ;
typedef int IROp ;
typedef int CTypeID ;
typedef TYPE_2__ CType ;
typedef int CTState ;
typedef int CTSize ;


 int CTALIGN_PTR ;
 int CTINFO (int ,int) ;
 int CTSIZE_PTR ;
 int CT_PTR ;
 int IRCONV_ANY ;
 int IRCONV_SEXT ;
 int IRT (scalar_t__,scalar_t__) ;
 int IRTG (int ,scalar_t__) ;
 scalar_t__ IRT_CDATA ;
 scalar_t__ IRT_FLOAT ;
 scalar_t__ IRT_I64 ;
 scalar_t__ IRT_I8 ;
 scalar_t__ IRT_INT ;
 scalar_t__ IRT_INTP ;
 scalar_t__ IRT_NUM ;
 scalar_t__ IRT_PTR ;
 int IRT_U32 ;
 scalar_t__ IRT_U64 ;
 scalar_t__ IR_ADD ;
 scalar_t__ IR_BSAR ;
 int IR_CNEWI ;
 int IR_EQ ;
 scalar_t__ IR_MUL ;
 scalar_t__ IR_SUB ;
 int IR_ULE ;
 int IR_ULT ;
 int J2G (TYPE_1__*) ;
 int LJ_POST_FIXGUARD ;
 scalar_t__ MM_add ;
 scalar_t__ MM_eq ;
 scalar_t__ MM_le ;
 scalar_t__ MM_lt ;
 scalar_t__ MM_sub ;
 int TREF_TRUE ;
 int ctype_cid (int ) ;
 int * ctype_ctsG (int ) ;
 scalar_t__ ctype_isnum (int ) ;
 scalar_t__ ctype_isptr (int ) ;
 scalar_t__ ctype_isrefarray (int ) ;
 int emitconv (int ,scalar_t__,scalar_t__,int ) ;
 int emitir (int ,int ,int ) ;
 int lj_ctype_intern (int *,int ,int ) ;
 int lj_ctype_size (int *,int) ;
 int lj_fls (int) ;
 int lj_ir_kint (TYPE_1__*,int ) ;
 int lj_ir_kintp (TYPE_1__*,int) ;
 int lj_ir_set (TYPE_1__*,int ,int ,int ) ;
 scalar_t__ tref_type (int ) ;
 int tref_typerange (int ,scalar_t__,int ) ;

__attribute__((used)) static TRef crec_arith_ptr(jit_State *J, TRef *sp, CType **s, MMS mm)
{
  CTState *cts = ctype_ctsG(J2G(J));
  CType *ctp = s[0];
  if (ctype_isptr(ctp->info) || ctype_isrefarray(ctp->info)) {
    if ((mm == MM_sub || mm == MM_eq || mm == MM_lt || mm == MM_le) &&
 (ctype_isptr(s[1]->info) || ctype_isrefarray(s[1]->info))) {
      if (mm == MM_sub) {
 TRef tr;
 CTSize sz = lj_ctype_size(cts, ctype_cid(ctp->info));
 if (sz == 0 || (sz & (sz-1)) != 0)
   return 0;
 tr = emitir(IRT(IR_SUB, IRT_INTP), sp[0], sp[1]);
 tr = emitir(IRT(IR_BSAR, IRT_INTP), tr, lj_ir_kint(J, lj_fls(sz)));



 return tr;
      } else {

 IROp op = mm == MM_eq ? IR_EQ : mm == MM_lt ? IR_ULT : IR_ULE;
 lj_ir_set(J, IRTG(op, IRT_PTR), sp[0], sp[1]);
 J->postproc = LJ_POST_FIXGUARD;
 return TREF_TRUE;
      }
    }
    if (!((mm == MM_add || mm == MM_sub) && ctype_isnum(s[1]->info)))
      return 0;
  } else if (mm == MM_add && ctype_isnum(ctp->info) &&
      (ctype_isptr(s[1]->info) || ctype_isrefarray(s[1]->info))) {
    TRef tr = sp[0]; sp[0] = sp[1]; sp[1] = tr;
    ctp = s[1];
  } else {
    return 0;
  }
  {
    TRef tr = sp[1];
    IRType t = tref_type(tr);
    CTSize sz = lj_ctype_size(cts, ctype_cid(ctp->info));
    CTypeID id;







    if (!tref_typerange(sp[1], IRT_I8, IRT_U32)) {
      tr = emitconv(tr, IRT_INTP, t,
      (t == IRT_NUM || t == IRT_FLOAT) ? IRCONV_ANY : 0);
    }

    tr = emitir(IRT(IR_MUL, IRT_INTP), tr, lj_ir_kintp(J, sz));
    tr = emitir(IRT(mm+(int)IR_ADD-(int)MM_add, IRT_PTR), sp[0], tr);
    id = lj_ctype_intern(cts, CTINFO(CT_PTR, CTALIGN_PTR|ctype_cid(ctp->info)),
    CTSIZE_PTR);
    return emitir(IRTG(IR_CNEWI, IRT_CDATA), lj_ir_kint(J, id), tr);
  }
}
