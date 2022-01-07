
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jit_State ;
typedef int cTValue ;
typedef int TRef ;


 int TREF_PRI (int ) ;
 int gcV (int *) ;
 int intV (int *) ;
 int itype2irt (int *) ;
 int lj_ir_kgc (int *,int ,int ) ;
 int lj_ir_kint (int *,int ) ;
 int lj_ir_knumint (int *,int ) ;
 int numV (int *) ;
 scalar_t__ tvisbool (int *) ;
 scalar_t__ tvisgcv (int *) ;
 scalar_t__ tvisint (int *) ;
 scalar_t__ tvisnum (int *) ;

TRef lj_record_constify(jit_State *J, cTValue *o)
{
  if (tvisgcv(o))
    return lj_ir_kgc(J, gcV(o), itype2irt(o));
  else if (tvisint(o))
    return lj_ir_kint(J, intV(o));
  else if (tvisnum(o))
    return lj_ir_knumint(J, numV(o));
  else if (tvisbool(o))
    return TREF_PRI(itype2irt(o));
  else
    return 0;
}
