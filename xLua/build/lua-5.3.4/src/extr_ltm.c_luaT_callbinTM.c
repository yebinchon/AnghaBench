
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int TValue ;
typedef int TMS ;
typedef int StkId ;


 int luaT_callTM (int *,int const*,int const*,int const*,int ,int) ;
 int * luaT_gettmbyobj (int *,int const*,int ) ;
 scalar_t__ ttisnil (int const*) ;

int luaT_callbinTM (lua_State *L, const TValue *p1, const TValue *p2,
                    StkId res, TMS event) {
  const TValue *tm = luaT_gettmbyobj(L, p1, event);
  if (ttisnil(tm))
    tm = luaT_gettmbyobj(L, p2, event);
  if (ttisnil(tm)) return 0;
  luaT_callTM(L, tm, p1, p2, res, 1);
  return 1;
}
