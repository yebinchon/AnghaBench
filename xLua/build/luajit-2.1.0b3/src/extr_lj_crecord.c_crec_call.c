
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;


struct TYPE_31__ {int needsnap; int * base; int postproc; TYPE_7__* L; } ;
typedef TYPE_1__ jit_State ;
struct TYPE_36__ {scalar_t__ base; } ;
struct TYPE_35__ {int miscmap; } ;
struct TYPE_34__ {int info; int size; } ;
struct TYPE_33__ {int ctypeid; } ;
struct TYPE_32__ {scalar_t__ nres; } ;
typedef int TValue ;
typedef int TRef ;
typedef TYPE_2__ RecordFFData ;
typedef scalar_t__ IRType ;
typedef TYPE_3__ GCcdata ;
typedef TYPE_4__ CType ;
typedef TYPE_5__ CTState ;


 scalar_t__ CTCC_CDECL ;
 int CTF_VARARG ;
 int IRCONV_SEXT ;
 int IRFL_CDATA_PTR ;
 int IRT (int ,scalar_t__) ;
 int IRTG (int ,scalar_t__) ;
 int IRTGI (int ) ;
 scalar_t__ IRT_CDATA ;
 scalar_t__ IRT_FLOAT ;
 scalar_t__ IRT_I16 ;
 scalar_t__ IRT_I64 ;
 scalar_t__ IRT_I8 ;
 int IRT_INT ;
 scalar_t__ IRT_NIL ;
 int IRT_NUM ;
 scalar_t__ IRT_P32 ;
 scalar_t__ IRT_P64 ;
 scalar_t__ IRT_PTR ;
 scalar_t__ IRT_U16 ;
 scalar_t__ IRT_U32 ;
 scalar_t__ IRT_U64 ;
 scalar_t__ IRT_U8 ;
 int IR_CALLXS ;
 int IR_CARG ;
 int IR_CNEWI ;
 int IR_FLOAD ;
 int IR_NE ;
 int J2G (TYPE_1__*) ;
 scalar_t__ LJ_64 ;
 int LJ_POST_FIXGUARDSNAP ;
 int LJ_TRERR_BLACKL ;
 int LJ_TRERR_NYICALL ;
 int TREF_NIL ;
 int TREF_TRUE ;
 int bc_b (int ) ;
 int cdata_getptr (int ,int) ;
 int cdataptr (TYPE_3__*) ;
 int crec_call_args (TYPE_1__*,TYPE_2__*,TYPE_5__*,TYPE_4__*) ;
 scalar_t__ crec_ct2irt (TYPE_5__*,TYPE_4__*) ;
 int crec_snap_caller (TYPE_1__*) ;
 scalar_t__ ctype_cconv (int) ;
 int ctype_cid (int) ;
 TYPE_5__* ctype_ctsG (int ) ;
 scalar_t__ ctype_isbool (int) ;
 scalar_t__ ctype_isenum (int) ;
 scalar_t__ ctype_isfunc (int) ;
 scalar_t__ ctype_isnum (int) ;
 scalar_t__ ctype_isptr (int) ;
 scalar_t__ ctype_isvoid (int) ;
 TYPE_4__* ctype_raw (TYPE_5__*,int ) ;
 TYPE_4__* ctype_rawchild (TYPE_5__*,TYPE_4__*) ;
 int ctype_typeid (TYPE_5__*,TYPE_4__*) ;
 int emitconv (int ,int ,scalar_t__,int ) ;
 int emitir (int ,int ,int ) ;
 scalar_t__ frame_islua (scalar_t__) ;
 int * frame_pc (scalar_t__) ;
 int lj_ir_kint (TYPE_1__*,int ) ;
 int lj_ir_set (TYPE_1__*,int ,int ,int ) ;
 int lj_needsplit (TYPE_1__*) ;
 int lj_tab_get (TYPE_7__*,int ,int *) ;
 int lj_trace_err (TYPE_1__*,int ) ;
 int setlightudV (int *,int ) ;
 scalar_t__ tvistrue (int ) ;

__attribute__((used)) static int crec_call(jit_State *J, RecordFFData *rd, GCcdata *cd)
{
  CTState *cts = ctype_ctsG(J2G(J));
  CType *ct = ctype_raw(cts, cd->ctypeid);
  IRType tp = IRT_PTR;
  if (ctype_isptr(ct->info)) {
    tp = (LJ_64 && ct->size == 8) ? IRT_P64 : IRT_P32;
    ct = ctype_rawchild(cts, ct);
  }
  if (ctype_isfunc(ct->info)) {
    TRef func = emitir(IRT(IR_FLOAD, tp), J->base[0], IRFL_CDATA_PTR);
    CType *ctr = ctype_rawchild(cts, ct);
    IRType t = crec_ct2irt(cts, ctr);
    TRef tr;
    TValue tv;

    setlightudV(&tv,
  cdata_getptr(cdataptr(cd), (LJ_64 && tp == IRT_P64) ? 8 : 4));
    if (tvistrue(lj_tab_get(J->L, cts->miscmap, &tv)))
      lj_trace_err(J, LJ_TRERR_BLACKL);
    if (ctype_isvoid(ctr->info)) {
      t = IRT_NIL;
      rd->nres = 0;
    } else if (!(ctype_isnum(ctr->info) || ctype_isptr(ctr->info) ||
   ctype_isenum(ctr->info)) || t == IRT_CDATA) {
      lj_trace_err(J, LJ_TRERR_NYICALL);
    }
    if ((ct->info & CTF_VARARG)



 )
      func = emitir(IRT(IR_CARG, IRT_NIL), func,
      lj_ir_kint(J, ctype_typeid(cts, ct)));
    tr = emitir(IRT(IR_CALLXS, t), crec_call_args(J, rd, cts, ct), func);
    if (ctype_isbool(ctr->info)) {
      if (frame_islua(J->L->base-1) && bc_b(frame_pc(J->L->base-1)[-1]) == 1) {

 tr = TREF_NIL;
      } else {
 crec_snap_caller(J);




 lj_ir_set(J, IRTGI(IR_NE), tr, lj_ir_kint(J, 0));

 J->postproc = LJ_POST_FIXGUARDSNAP;
 tr = TREF_TRUE;
      }
    } else if (t == IRT_PTR || (LJ_64 && t == IRT_P32) ||
        t == IRT_I64 || t == IRT_U64 || ctype_isenum(ctr->info)) {
      TRef trid = lj_ir_kint(J, ctype_cid(ct->info));
      tr = emitir(IRTG(IR_CNEWI, IRT_CDATA), trid, tr);
      if (t == IRT_I64 || t == IRT_U64) lj_needsplit(J);
    } else if (t == IRT_FLOAT || t == IRT_U32) {
      tr = emitconv(tr, IRT_NUM, t, 0);
    } else if (t == IRT_I8 || t == IRT_I16) {
      tr = emitconv(tr, IRT_INT, t, IRCONV_SEXT);
    } else if (t == IRT_U8 || t == IRT_U16) {
      tr = emitconv(tr, IRT_INT, t, 0);
    }
    J->base[0] = tr;
    J->needsnap = 1;
    return 1;
  }
  return 0;
}
