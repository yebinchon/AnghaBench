
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t szallmcarea; scalar_t__* param; } ;
typedef TYPE_1__ jit_State ;


 size_t JIT_P_maxmcode ;
 size_t JIT_P_sizemcode ;
 size_t LJ_PAGESIZE ;
 int LJ_TRERR_MCODEAL ;
 int LJ_TRERR_MCODELM ;
 int LJ_TRERR_MCODEOV ;
 int lj_mcode_abort (TYPE_1__*) ;
 int lj_trace_err (TYPE_1__*,int ) ;
 int mcode_allocarea (TYPE_1__*) ;

void lj_mcode_limiterr(jit_State *J, size_t need)
{
  size_t sizemcode, maxmcode;
  lj_mcode_abort(J);
  sizemcode = (size_t)J->param[JIT_P_sizemcode] << 10;
  sizemcode = (sizemcode + LJ_PAGESIZE-1) & ~(size_t)(LJ_PAGESIZE - 1);
  maxmcode = (size_t)J->param[JIT_P_maxmcode] << 10;
  if ((size_t)need > sizemcode)
    lj_trace_err(J, LJ_TRERR_MCODEOV);
  if (J->szallmcarea + sizemcode > maxmcode)
    lj_trace_err(J, LJ_TRERR_MCODEAL);
  mcode_allocarea(J);
  lj_trace_err(J, LJ_TRERR_MCODELM);
}
