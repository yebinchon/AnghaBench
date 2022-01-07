
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int * base; int L; } ;
typedef TYPE_1__ jit_State ;
typedef int cTValue ;
struct TYPE_11__ {scalar_t__ data; int * argv; } ;
typedef TYPE_2__ RecordFFData ;
typedef int CTypeID ;
typedef int CType ;
typedef int CTState ;


 int IRTG (int ,int ) ;
 int IRT_STR ;
 int IR_EQ ;
 int LJ_TRERR_BADTYPE ;
 int MM_index ;
 int MM_newindex ;
 int crec_tailcall (TYPE_1__*,TYPE_2__*,int *) ;
 int ctype_typeid (int *,int *) ;
 int emitir (int ,int ,int ) ;
 int * lj_ctype_meta (int *,int ,int ) ;
 int lj_ir_kstr (TYPE_1__*,int ) ;
 int lj_record_constify (TYPE_1__*,int *) ;
 int * lj_tab_get (int ,int ,int *) ;
 int lj_trace_err (TYPE_1__*,int ) ;
 int strV (int *) ;
 int tabV (int *) ;
 scalar_t__ tref_isstr (int ) ;
 scalar_t__ tvisfunc (int *) ;
 scalar_t__ tvistab (int *) ;

__attribute__((used)) static void crec_index_meta(jit_State *J, CTState *cts, CType *ct,
       RecordFFData *rd)
{
  CTypeID id = ctype_typeid(cts, ct);
  cTValue *tv = lj_ctype_meta(cts, id, rd->data ? MM_newindex : MM_index);
  if (!tv)
    lj_trace_err(J, LJ_TRERR_BADTYPE);
  if (tvisfunc(tv)) {
    crec_tailcall(J, rd, tv);
  } else if (rd->data == 0 && tvistab(tv) && tref_isstr(J->base[1])) {

    cTValue *o = lj_tab_get(J->L, tabV(tv), &rd->argv[1]);
    J->base[0] = lj_record_constify(J, o);
    if (!J->base[0])
      lj_trace_err(J, LJ_TRERR_BADTYPE);

    emitir(IRTG(IR_EQ, IRT_STR), J->base[1], lj_ir_kstr(J, strV(&rd->argv[1])));
  } else {



    lj_trace_err(J, LJ_TRERR_BADTYPE);
  }
}
