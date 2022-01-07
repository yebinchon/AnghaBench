
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int * top; int * base; } ;
typedef TYPE_1__ lua_State ;
typedef int TValue ;
typedef int CTypeID ;
typedef int CTState ;


 int CCF_ARG (int) ;
 int LJ_ERR_NOVAL ;
 int * ctype_cts (TYPE_1__*) ;
 int ctype_get (int *,int ) ;
 int lj_cconv_ct_tv (int *,int ,int *,int *,int ) ;
 int lj_err_arg (TYPE_1__*,int,int ) ;

__attribute__((used)) static void *ffi_checkptr(lua_State *L, int narg, CTypeID id)
{
  CTState *cts = ctype_cts(L);
  TValue *o = L->base + narg-1;
  void *p;
  if (o >= L->top)
    lj_err_arg(L, narg, LJ_ERR_NOVAL);
  lj_cconv_ct_tv(cts, ctype_get(cts, id), (uint8_t *)&p, o, CCF_ARG(narg));
  return p;
}
