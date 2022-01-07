
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int lua_State ;
typedef int cTValue ;
struct TYPE_6__ {scalar_t__ gct; int metatable; } ;
struct TYPE_7__ {TYPE_1__ gch; } ;
typedef int TValue ;
typedef TYPE_2__ GCobj ;


 scalar_t__ LJ_FR2 ;
 int MM_eq ;
 int copyTV (int *,int ,int *) ;
 int * curr_top (int *) ;
 int lj_cont_condf ;
 int lj_cont_condt ;
 int * lj_meta_fast (int *,scalar_t__,int ) ;
 int lj_obj_equal (int *,int *) ;
 int setcont (int ,int ) ;
 int setgcV (int *,int *,TYPE_2__*,int ) ;
 int setnilV (int ) ;
 scalar_t__ tabref (int ) ;

TValue *lj_meta_equal(lua_State *L, GCobj *o1, GCobj *o2, int ne)
{

  cTValue *mo = lj_meta_fast(L, tabref(o1->gch.metatable), MM_eq);
  if (mo) {
    TValue *top;
    uint32_t it;
    if (tabref(o1->gch.metatable) != tabref(o2->gch.metatable)) {
      cTValue *mo2 = lj_meta_fast(L, tabref(o2->gch.metatable), MM_eq);
      if (mo2 == ((void*)0) || !lj_obj_equal(mo, mo2))
 return (TValue *)(intptr_t)ne;
    }
    top = curr_top(L);
    setcont(top++, ne ? lj_cont_condf : lj_cont_condt);
    if (LJ_FR2) setnilV(top++);
    copyTV(L, top++, mo);
    if (LJ_FR2) setnilV(top++);
    it = ~(uint32_t)o1->gch.gct;
    setgcV(L, top, o1, it);
    setgcV(L, top+1, o2, it);
    return top;
  }
  return (TValue *)(intptr_t)ne;
}
