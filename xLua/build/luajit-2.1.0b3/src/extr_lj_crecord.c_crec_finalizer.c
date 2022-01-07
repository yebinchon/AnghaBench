
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int needsnap; } ;
typedef TYPE_1__ jit_State ;
typedef int int32_t ;
typedef int cTValue ;
typedef scalar_t__ TRef ;


 int IRCALL_lj_cdata_setfin ;
 int LJ_TRERR_BADTYPE ;
 int * gcval (int *) ;
 scalar_t__ itype (int *) ;
 int lj_ir_call (TYPE_1__*,int ,scalar_t__,scalar_t__,int ) ;
 int lj_ir_kint (TYPE_1__*,int ) ;
 scalar_t__ lj_ir_kptr (TYPE_1__*,int *) ;
 int lj_trace_err (TYPE_1__*,int ) ;
 scalar_t__ tvisgcv (int *) ;
 scalar_t__ tvisnil (int *) ;

__attribute__((used)) static void crec_finalizer(jit_State *J, TRef trcd, TRef trfin, cTValue *fin)
{
  if (tvisgcv(fin)) {
    if (!trfin) trfin = lj_ir_kptr(J, gcval(fin));
  } else if (tvisnil(fin)) {
    trfin = lj_ir_kptr(J, ((void*)0));
  } else {
    lj_trace_err(J, LJ_TRERR_BADTYPE);
  }
  lj_ir_call(J, IRCALL_lj_cdata_setfin, trcd,
      trfin, lj_ir_kint(J, (int32_t)itype(fin)));
  J->needsnap = 1;
}
