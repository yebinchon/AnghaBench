
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef scalar_t__ int32_t ;
typedef int cTValue ;
typedef int TValue ;
typedef int MMS ;
typedef int ASMFunction ;


 scalar_t__ LJ_52 ;
 scalar_t__ LJ_HASFFI ;
 scalar_t__ LJ_UNLIKELY (scalar_t__) ;
 int MM_le ;
 int MM_lt ;
 scalar_t__ itype (int *) ;
 int lj_cont_condf ;
 int lj_cont_condt ;
 int lj_err_comp (int *,int *,int *) ;
 int * lj_meta_lookup (int *,int *,int ) ;
 int lj_obj_equal (int *,int *) ;
 scalar_t__ lj_str_cmp (int ,int ) ;
 int * mmcall (int *,int ,int *,int *,int *) ;
 int strV (int *) ;
 scalar_t__ tvisbool (int *) ;
 scalar_t__ tviscdata (int *) ;
 scalar_t__ tvisnil (int *) ;
 scalar_t__ tvisstr (int *) ;

TValue *lj_meta_comp(lua_State *L, cTValue *o1, cTValue *o2, int op)
{
  if (LJ_HASFFI && (tviscdata(o1) || tviscdata(o2))) {
    ASMFunction cont = (op & 1) ? lj_cont_condf : lj_cont_condt;
    MMS mm = (op & 2) ? MM_le : MM_lt;
    cTValue *mo = lj_meta_lookup(L, tviscdata(o1) ? o1 : o2, mm);
    if (LJ_UNLIKELY(tvisnil(mo))) goto err;
    return mmcall(L, cont, mo, o1, o2);
  } else if (LJ_52 || itype(o1) == itype(o2)) {

    if (tvisstr(o1) && tvisstr(o2)) {
      int32_t res = lj_str_cmp(strV(o1), strV(o2));
      return (TValue *)(intptr_t)(((op&2) ? res <= 0 : res < 0) ^ (op&1));
    } else {
    trymt:
      while (1) {
 ASMFunction cont = (op & 1) ? lj_cont_condf : lj_cont_condt;
 MMS mm = (op & 2) ? MM_le : MM_lt;
 cTValue *mo = lj_meta_lookup(L, o1, mm);



 cTValue *mo2 = lj_meta_lookup(L, o2, mm);
 if (tvisnil(mo) || !lj_obj_equal(mo, mo2))

 {
   if (op & 2) {
     cTValue *ot = o1; o1 = o2; o2 = ot;
     op ^= 3;
     continue;
   }
   goto err;
 }
 return mmcall(L, cont, mo, o1, o2);
      }
    }
  } else if (tvisbool(o1) && tvisbool(o2)) {
    goto trymt;
  } else {
  err:
    lj_err_comp(L, o1, o2);
    return ((void*)0);
  }
}
