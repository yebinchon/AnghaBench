
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__* base; } ;
typedef TYPE_1__ jit_State ;
typedef int cTValue ;
struct TYPE_15__ {int info; int size; scalar_t__ sib; } ;
struct TYPE_14__ {int * argv; } ;
typedef scalar_t__ TRef ;
typedef TYPE_2__ RecordFFData ;
typedef int MSize ;
typedef scalar_t__ CTypeID ;
typedef TYPE_3__ CType ;
typedef int CTState ;


 int CCI_NARGS_MAX ;
 scalar_t__ CTCC_FASTCALL ;
 scalar_t__ CTCC_THISCALL ;
 int CTF_UNSIGNED ;
 int CTF_VARARG ;
 int IRCONV_SEXT ;
 int IRT (int ,int ) ;
 int IRT_I16 ;
 int IRT_I64 ;
 int IRT_I8 ;
 int IRT_INT ;
 int IRT_NIL ;
 int IRT_U16 ;
 int IRT_U64 ;
 int IRT_U8 ;
 int IR_CARG ;
 scalar_t__ LJ_SOFTFP ;
 int LJ_TRERR_NYICALL ;
 scalar_t__ TREF_NIL ;
 scalar_t__ crec_ct_tv (TYPE_1__*,TYPE_3__*,int ,scalar_t__,int *) ;
 scalar_t__ ctype_cconv (int) ;
 scalar_t__ ctype_cid (int) ;
 TYPE_3__* ctype_get (int *,scalar_t__) ;
 int ctype_isattrib (int) ;
 scalar_t__ ctype_isenum (int) ;
 int ctype_isfield (int) ;
 scalar_t__ ctype_isfp (int) ;
 scalar_t__ ctype_isinteger_or_bool (int) ;
 scalar_t__ ctype_isnum (int) ;
 scalar_t__ ctype_isptr (int) ;
 TYPE_3__* ctype_raw (int *,scalar_t__) ;
 scalar_t__ emitconv (scalar_t__,int ,int ,int ) ;
 scalar_t__ emitir (int ,scalar_t__,scalar_t__) ;
 scalar_t__ lj_ccall_ctid_vararg (int *,int *) ;
 int lj_needsplit (TYPE_1__*) ;
 int lj_trace_err (TYPE_1__*,int ) ;
 int lua_assert (int ) ;
 scalar_t__ tref_typerange (scalar_t__,int ,int ) ;

__attribute__((used)) static TRef crec_call_args(jit_State *J, RecordFFData *rd,
      CTState *cts, CType *ct)
{
  TRef args[CCI_NARGS_MAX];
  CTypeID fid;
  MSize i, n;
  TRef tr, *base;
  cTValue *o;
  fid = ct->sib;
  while (fid) {
    CType *ctf = ctype_get(cts, fid);
    if (!ctype_isattrib(ctf->info)) break;
    fid = ctf->sib;
  }
  args[0] = TREF_NIL;
  for (n = 0, base = J->base+1, o = rd->argv+1; *base; n++, base++, o++) {
    CTypeID did;
    CType *d;

    if (n >= CCI_NARGS_MAX)
      lj_trace_err(J, LJ_TRERR_NYICALL);

    if (fid) {
      CType *ctf = ctype_get(cts, fid);
      fid = ctf->sib;
      lua_assert(ctype_isfield(ctf->info));
      did = ctype_cid(ctf->info);
    } else {
      if (!(ct->info & CTF_VARARG))
 lj_trace_err(J, LJ_TRERR_NYICALL);
      did = lj_ccall_ctid_vararg(cts, o);
    }
    d = ctype_raw(cts, did);
    if (!(ctype_isnum(d->info) || ctype_isptr(d->info) ||
   ctype_isenum(d->info)))
      lj_trace_err(J, LJ_TRERR_NYICALL);
    tr = crec_ct_tv(J, d, 0, *base, o);
    if (ctype_isinteger_or_bool(d->info)) {
      if (d->size < 4) {
 if ((d->info & CTF_UNSIGNED))
   tr = emitconv(tr, IRT_INT, d->size==1 ? IRT_U8 : IRT_U16, 0);
 else
   tr = emitconv(tr, IRT_INT, d->size==1 ? IRT_I8 : IRT_I16,IRCONV_SEXT);
      }
    } else if (LJ_SOFTFP && ctype_isfp(d->info) && d->size > 4) {
      lj_needsplit(J);
    }
    args[n] = tr;
  }
  tr = args[0];
  for (i = 1; i < n; i++)
    tr = emitir(IRT(IR_CARG, IRT_NIL), tr, args[i]);
  return tr;
}
