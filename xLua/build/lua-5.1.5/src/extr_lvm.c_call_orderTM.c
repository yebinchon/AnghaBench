
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int top; } ;
typedef TYPE_1__ lua_State ;
typedef int TValue ;
typedef int TMS ;


 int callTMres (TYPE_1__*,int ,int const*,int const*,int const*) ;
 int l_isfalse (int ) ;
 int luaO_rawequalObj (int const*,int const*) ;
 int * luaT_gettmbyobj (TYPE_1__*,int const*,int ) ;
 scalar_t__ ttisnil (int const*) ;

__attribute__((used)) static int call_orderTM (lua_State *L, const TValue *p1, const TValue *p2,
                         TMS event) {
  const TValue *tm1 = luaT_gettmbyobj(L, p1, event);
  const TValue *tm2;
  if (ttisnil(tm1)) return -1;
  tm2 = luaT_gettmbyobj(L, p2, event);
  if (!luaO_rawequalObj(tm1, tm2))
    return -1;
  callTMres(L, L->top, tm1, p1, p2);
  return !l_isfalse(L->top);
}
