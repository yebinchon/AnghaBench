
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
typedef int TValue ;
typedef int TString ;


 int api_incr_top (TYPE_1__*) ;
 int luaH_getstr ;
 int * luaS_new (TYPE_1__*,char const*) ;
 scalar_t__ luaV_fastget (TYPE_1__*,int const*,int *,int const*,int ) ;
 int luaV_finishget (TYPE_1__*,int const*,scalar_t__,scalar_t__,int const*) ;
 int lua_unlock (TYPE_1__*) ;
 int setobj2s (TYPE_1__*,scalar_t__,int const*) ;
 int setsvalue2s (TYPE_1__*,scalar_t__,int *) ;
 int ttnov (scalar_t__) ;

__attribute__((used)) static int auxgetstr (lua_State *L, const TValue *t, const char *k) {
  const TValue *slot;
  TString *str = luaS_new(L, k);
  if (luaV_fastget(L, t, str, slot, luaH_getstr)) {
    setobj2s(L, L->top, slot);
    api_incr_top(L);
  }
  else {
    setsvalue2s(L, L->top, str);
    api_incr_top(L);
    luaV_finishget(L, t, L->top - 1, L->top - 1, slot);
  }
  lua_unlock(L);
  return ttnov(L->top - 1);
}
