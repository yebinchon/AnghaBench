
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_14__ {int* base; int postproc; } ;
typedef TYPE_1__ jit_State ;
typedef int cTValue ;
struct TYPE_16__ {int info; } ;
struct TYPE_15__ {int nres; scalar_t__ data; int * argv; } ;
struct TYPE_13__ {int ctypeid; } ;
typedef scalar_t__ TRef ;
typedef TYPE_2__ RecordFFData ;
typedef scalar_t__ MMS ;
typedef int CTypeID ;
typedef TYPE_3__ CType ;
typedef int CTState ;


 int IRTG (int ,int ) ;
 int IRT_PTR ;
 int IR_EQ ;
 int LJ_POST_FIXGUARD ;
 int LJ_TRERR_BADTYPE ;
 scalar_t__ MM_eq ;
 scalar_t__ TREF_FALSE ;
 int TREF_FRAME ;
 scalar_t__ TREF_TRUE ;
 TYPE_11__* argv2cdata (TYPE_1__*,int,int *) ;
 int ctype_cid (int ) ;
 scalar_t__ ctype_isnum (int ) ;
 scalar_t__ ctype_isptr (int ) ;
 TYPE_3__* ctype_raw (int *,int ) ;
 int funcV (int *) ;
 int * lj_ctype_meta (int *,int ,scalar_t__) ;
 int lj_ir_kfunc (TYPE_1__*,int ) ;
 int lj_ir_set (TYPE_1__*,int ,scalar_t__,scalar_t__) ;
 int lj_trace_err (TYPE_1__*,int ) ;
 scalar_t__ tviscdata (int *) ;
 scalar_t__ tvisfunc (int *) ;

__attribute__((used)) static TRef crec_arith_meta(jit_State *J, TRef *sp, CType **s, CTState *cts,
       RecordFFData *rd)
{
  cTValue *tv = ((void*)0);
  if (J->base[0]) {
    if (tviscdata(&rd->argv[0])) {
      CTypeID id = argv2cdata(J, J->base[0], &rd->argv[0])->ctypeid;
      CType *ct = ctype_raw(cts, id);
      if (ctype_isptr(ct->info)) id = ctype_cid(ct->info);
      tv = lj_ctype_meta(cts, id, (MMS)rd->data);
    }
    if (!tv && J->base[1] && tviscdata(&rd->argv[1])) {
      CTypeID id = argv2cdata(J, J->base[1], &rd->argv[1])->ctypeid;
      CType *ct = ctype_raw(cts, id);
      if (ctype_isptr(ct->info)) id = ctype_cid(ct->info);
      tv = lj_ctype_meta(cts, id, (MMS)rd->data);
    }
  }
  if (tv) {
    if (tvisfunc(tv)) {
      J->base[-1] = lj_ir_kfunc(J, funcV(tv)) | TREF_FRAME;
      rd->nres = -1;
      return 0;
    }
  } else if ((MMS)rd->data == MM_eq) {
    if (sp[0] && sp[1] && ctype_isnum(s[0]->info) == ctype_isnum(s[1]->info)) {

      lj_ir_set(J, IRTG(IR_EQ, IRT_PTR), sp[0], sp[1]);
      J->postproc = LJ_POST_FIXGUARD;
      return TREF_TRUE;
    } else {
      return TREF_FALSE;
    }
  }
  lj_trace_err(J, LJ_TRERR_BADTYPE);
  return 0;
}
