
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jit_State ;
typedef int TValue ;
typedef int TRef ;
typedef int CTState ;


 int CTID_INT32 ;
 int crec_ct_tv (int *,int ,int ,int ,int *) ;
 int ctype_get (int *,int ) ;

__attribute__((used)) static TRef crec_toint(jit_State *J, CTState *cts, TRef sp, TValue *sval)
{
  return crec_ct_tv(J, ctype_get(cts, CTID_INT32), 0, sp, sval);
}
