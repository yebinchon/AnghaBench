
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int cTValue ;
typedef int TValue ;
typedef scalar_t__ MMS ;
typedef int BCReg ;


 int LJ_ERR_OPARITH ;
 scalar_t__ MM_add ;
 scalar_t__ bcmode_mm (int ) ;
 int lj_cont_ra ;
 int lj_err_optype (int *,int *,int ) ;
 int * lj_meta_lookup (int *,int *,scalar_t__) ;
 int lj_vm_foldarith (int ,int ,scalar_t__) ;
 int * mmcall (int *,int ,int *,int *,int *) ;
 int numV (int *) ;
 int setnumV (int *,int ) ;
 int * str2num (int *,int *) ;
 scalar_t__ tvisnil (int *) ;

TValue *lj_meta_arith(lua_State *L, TValue *ra, cTValue *rb, cTValue *rc,
        BCReg op)
{
  MMS mm = bcmode_mm(op);
  TValue tempb, tempc;
  cTValue *b, *c;
  if ((b = str2num(rb, &tempb)) != ((void*)0) &&
      (c = str2num(rc, &tempc)) != ((void*)0)) {
    setnumV(ra, lj_vm_foldarith(numV(b), numV(c), (int)mm-MM_add));
    return ((void*)0);
  } else {
    cTValue *mo = lj_meta_lookup(L, rb, mm);
    if (tvisnil(mo)) {
      mo = lj_meta_lookup(L, rc, mm);
      if (tvisnil(mo)) {
 if (str2num(rb, &tempb) == ((void*)0)) rc = rb;
 lj_err_optype(L, rc, LJ_ERR_OPARITH);
 return ((void*)0);
      }
    }
    return mmcall(L, lj_cont_ra, mo, rb, rc);
  }
}
