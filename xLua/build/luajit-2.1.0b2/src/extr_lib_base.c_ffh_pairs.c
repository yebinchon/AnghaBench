
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int base; int * top; } ;
typedef TYPE_1__ lua_State ;
typedef int cTValue ;
typedef int TValue ;
typedef int MMS ;


 int FFH_RES (int) ;
 int FFH_TAILCALL ;
 scalar_t__ LJ_52 ;
 int LJ_FR2 ;
 int LUA_TTABLE ;
 int MM_pairs ;
 int copyTV (TYPE_1__*,int,int *) ;
 int funcV (int ) ;
 int lj_err_argt (TYPE_1__*,int,int ) ;
 int * lj_lib_checkany (TYPE_1__*,int) ;
 int lj_lib_upvalue (TYPE_1__*,int) ;
 int * lj_meta_lookup (TYPE_1__*,int *,int ) ;
 int setfuncV (TYPE_1__*,int *,int ) ;
 int setintV (int *,int ) ;
 int setnilV (int *) ;
 scalar_t__ tviscdata (int *) ;
 int tvisnil (int *) ;
 int tvistab (int *) ;

__attribute__((used)) static int ffh_pairs(lua_State *L, MMS mm)
{
  TValue *o = lj_lib_checkany(L, 1);
  cTValue *mo = lj_meta_lookup(L, o, mm);
  if ((LJ_52 || tviscdata(o)) && !tvisnil(mo)) {
    L->top = o+1;
    copyTV(L, L->base-1-LJ_FR2, mo);
    return FFH_TAILCALL;
  } else {
    if (!tvistab(o)) lj_err_argt(L, 1, LUA_TTABLE);
    if (LJ_FR2) { copyTV(L, o-1, o); o--; }
    setfuncV(L, o-1, funcV(lj_lib_upvalue(L, 1)));
    if (mm == MM_pairs) setnilV(o+1); else setintV(o+1, 0);
    return FFH_RES(3);
  }
}
