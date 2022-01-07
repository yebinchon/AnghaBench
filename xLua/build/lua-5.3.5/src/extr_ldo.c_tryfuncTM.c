
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
typedef int TValue ;
typedef scalar_t__ StkId ;


 int TM_CALL ;
 int luaG_typeerror (TYPE_1__*,scalar_t__,char*) ;
 int * luaT_gettmbyobj (TYPE_1__*,scalar_t__,int ) ;
 int setobj2s (TYPE_1__*,scalar_t__,int const*) ;
 int setobjs2s (TYPE_1__*,scalar_t__,scalar_t__) ;
 int ttisfunction (int const*) ;

__attribute__((used)) static void tryfuncTM (lua_State *L, StkId func) {
  const TValue *tm = luaT_gettmbyobj(L, func, TM_CALL);
  StkId p;
  if (!ttisfunction(tm))
    luaG_typeerror(L, func, "call");

  for (p = L->top; p > func; p--)
    setobjs2s(L, p, p-1);
  L->top++;
  setobj2s(L, func, tm);
}
