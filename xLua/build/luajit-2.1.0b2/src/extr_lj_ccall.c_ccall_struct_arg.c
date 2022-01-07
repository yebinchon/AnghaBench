
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {scalar_t__ nsp; int * stack; } ;
typedef int TValue ;
typedef scalar_t__ MSize ;
typedef scalar_t__ GPRArg ;
typedef int CType ;
typedef int CTState ;
typedef TYPE_1__ CCallState ;


 scalar_t__ CCALL_MAXSTACK ;
 int CCF_ARG (int) ;
 scalar_t__ CTSIZE_PTR ;
 scalar_t__ ccall_struct_reg (TYPE_1__*,scalar_t__*,int*) ;
 int lj_cconv_ct_tv (int *,int *,int *,int *,int ) ;
 int memcpy (int *,scalar_t__*,scalar_t__) ;

__attribute__((used)) static int ccall_struct_arg(CCallState *cc, CTState *cts, CType *d, int *rcl,
       TValue *o, int narg)
{
  GPRArg dp[2];
  dp[0] = dp[1] = 0;

  lj_cconv_ct_tv(cts, d, (uint8_t *)dp, o, CCF_ARG(narg));
  if (ccall_struct_reg(cc, dp, rcl)) {
    MSize nsp = cc->nsp, n = rcl[1] ? 2 : 1;
    if (nsp + n > CCALL_MAXSTACK) return 1;
    cc->nsp = nsp + n;
    memcpy(&cc->stack[nsp], dp, n*CTSIZE_PTR);
  }
  return 0;
}
