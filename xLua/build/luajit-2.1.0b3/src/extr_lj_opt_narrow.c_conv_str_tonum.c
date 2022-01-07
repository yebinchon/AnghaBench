
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jit_State ;
typedef int TValue ;
typedef int TRef ;


 int IRTG (int ,int ) ;
 int IRT_NUM ;
 int IR_STRTO ;
 int LJ_TRERR_BADTYPE ;
 int emitir (int ,int ,int ) ;
 int lj_strscan_num (int ,int *) ;
 int lj_trace_err (int *,int ) ;
 int strV (int *) ;
 scalar_t__ tref_isstr (int ) ;

__attribute__((used)) static TRef conv_str_tonum(jit_State *J, TRef tr, TValue *o)
{
  if (tref_isstr(tr)) {
    tr = emitir(IRTG(IR_STRTO, IRT_NUM), tr, 0);

    if (!lj_strscan_num(strV(o), o))
      lj_trace_err(J, LJ_TRERR_BADTYPE);
  }
  return tr;
}
