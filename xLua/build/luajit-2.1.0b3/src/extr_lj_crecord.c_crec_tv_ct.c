
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_16__ {int L; int postproc; } ;
typedef TYPE_1__ jit_State ;
struct TYPE_18__ {int L; } ;
struct TYPE_17__ {int info; int size; } ;
typedef int TRef ;
typedef scalar_t__ IRType ;
typedef int GCcdata ;
typedef int CTypeID ;
typedef TYPE_2__ CType ;
typedef TYPE_3__ CTState ;
typedef int CTInfo ;


 int CTF_BOOL ;
 int CTINFO_REF (int ) ;
 int CTSIZE_PTR ;
 int IRT (int ,scalar_t__) ;
 int IRTG (int ,scalar_t__) ;
 int IRTGI (int ) ;
 scalar_t__ IRT_CDATA ;
 scalar_t__ IRT_FLOAT ;
 scalar_t__ IRT_I64 ;
 int IRT_NUM ;
 scalar_t__ IRT_PTR ;
 scalar_t__ IRT_U32 ;
 scalar_t__ IRT_U64 ;
 int IR_ADD ;
 int IR_CNEW ;
 int IR_CNEWI ;
 int IR_NE ;
 int IR_XLOAD ;
 int IR_XSTORE ;
 int J2G (TYPE_1__*) ;
 int LJ_POST_FIXGUARD ;
 int LJ_TRERR_NYICONV ;
 int TREF_NIL ;
 int TREF_TRUE ;
 scalar_t__ crec_ct2irt (TYPE_3__*,TYPE_2__*) ;
 TYPE_3__* ctype_ctsG (int ) ;
 scalar_t__ ctype_iscomplex (int) ;
 scalar_t__ ctype_isenum (int) ;
 scalar_t__ ctype_isnum (int) ;
 scalar_t__ ctype_isptr (int) ;
 scalar_t__ ctype_isrefarray (int) ;
 scalar_t__ ctype_isstruct (int) ;
 int emitconv (int ,int ,scalar_t__,int ) ;
 int emitir (int ,int ,int ) ;
 int lj_ctype_intern (TYPE_3__*,int ,int ) ;
 int lj_ir_kint (TYPE_1__*,int ) ;
 int lj_ir_kintp (TYPE_1__*,int) ;
 int lj_ir_set (TYPE_1__*,int ,int ,int ) ;
 int lj_needsplit (TYPE_1__*) ;
 int lj_trace_err (TYPE_1__*,int ) ;

__attribute__((used)) static TRef crec_tv_ct(jit_State *J, CType *s, CTypeID sid, TRef sp)
{
  CTState *cts = ctype_ctsG(J2G(J));
  IRType t = crec_ct2irt(cts, s);
  CTInfo sinfo = s->info;
  if (ctype_isnum(sinfo)) {
    TRef tr;
    if (t == IRT_CDATA)
      goto err_nyi;
    tr = emitir(IRT(IR_XLOAD, t), sp, 0);
    if (t == IRT_FLOAT || t == IRT_U32) {
      return emitconv(tr, IRT_NUM, t, 0);
    } else if (t == IRT_I64 || t == IRT_U64) {
      sp = tr;
      lj_needsplit(J);
    } else if ((sinfo & CTF_BOOL)) {

      lj_ir_set(J, IRTGI(IR_NE), tr, lj_ir_kint(J, 0));
      J->postproc = LJ_POST_FIXGUARD;
      return TREF_TRUE;
    } else {
      return tr;
    }
  } else if (ctype_isptr(sinfo) || ctype_isenum(sinfo)) {
    sp = emitir(IRT(IR_XLOAD, t), sp, 0);
  } else if (ctype_isrefarray(sinfo) || ctype_isstruct(sinfo)) {
    cts->L = J->L;
    sid = lj_ctype_intern(cts, CTINFO_REF(sid), CTSIZE_PTR);
  } else if (ctype_iscomplex(sinfo)) {
    ptrdiff_t esz = (ptrdiff_t)(s->size >> 1);
    TRef ptr, tr1, tr2, dp;
    dp = emitir(IRTG(IR_CNEW, IRT_CDATA), lj_ir_kint(J, sid), TREF_NIL);
    tr1 = emitir(IRT(IR_XLOAD, t), sp, 0);
    ptr = emitir(IRT(IR_ADD, IRT_PTR), sp, lj_ir_kintp(J, esz));
    tr2 = emitir(IRT(IR_XLOAD, t), ptr, 0);
    ptr = emitir(IRT(IR_ADD, IRT_PTR), dp, lj_ir_kintp(J, sizeof(GCcdata)));
    emitir(IRT(IR_XSTORE, t), ptr, tr1);
    ptr = emitir(IRT(IR_ADD, IRT_PTR), dp, lj_ir_kintp(J, sizeof(GCcdata)+esz));
    emitir(IRT(IR_XSTORE, t), ptr, tr2);
    return dp;
  } else {

  err_nyi:
    lj_trace_err(J, LJ_TRERR_NYICONV);
  }

  return emitir(IRTG(IR_CNEWI, IRT_CDATA), lj_ir_kint(J, sid), sp);
}
