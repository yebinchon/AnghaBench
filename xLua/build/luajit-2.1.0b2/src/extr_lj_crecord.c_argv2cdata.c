
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int jit_State ;
typedef int int32_t ;
typedef int cTValue ;
struct TYPE_4__ {scalar_t__ ctypeid; } ;
typedef int TRef ;
typedef TYPE_1__ GCcdata ;


 int IRFL_CDATA_CTYPEID ;
 int IRT (int ,int ) ;
 int IRTG (int ,int ) ;
 int IRT_INT ;
 int IRT_U16 ;
 int IR_EQ ;
 int IR_FLOAD ;
 int LJ_TRERR_BADTYPE ;
 TYPE_1__* cdataV (int *) ;
 int emitir (int ,int ,int ) ;
 int lj_ir_kint (int *,int ) ;
 int lj_trace_err (int *,int ) ;
 int tref_iscdata (int ) ;

__attribute__((used)) static GCcdata *argv2cdata(jit_State *J, TRef tr, cTValue *o)
{
  GCcdata *cd;
  TRef trtypeid;
  if (!tref_iscdata(tr))
    lj_trace_err(J, LJ_TRERR_BADTYPE);
  cd = cdataV(o);

  trtypeid = emitir(IRT(IR_FLOAD, IRT_U16), tr, IRFL_CDATA_CTYPEID);
  emitir(IRTG(IR_EQ, IRT_INT), trtypeid, lj_ir_kint(J, (int32_t)cd->ctypeid));
  return cd;
}
