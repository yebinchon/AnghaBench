
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_9__ {scalar_t__ top; int ci; } ;
typedef TYPE_1__ lua_State ;
typedef int const TValue ;
typedef scalar_t__ StkId ;


 scalar_t__ isLua (int ) ;
 int luaD_call (TYPE_1__*,scalar_t__,int) ;
 int luaD_callnoyield (TYPE_1__*,scalar_t__,int) ;
 int const* restorestack (TYPE_1__*,int ) ;
 int savestack (TYPE_1__*,int const*) ;
 int setobj2s (TYPE_1__*,scalar_t__,int const*) ;
 int setobjs2s (TYPE_1__*,int const*,scalar_t__) ;

void luaT_callTM (lua_State *L, const TValue *f, const TValue *p1,
                  const TValue *p2, TValue *p3, int hasres) {
  ptrdiff_t result = savestack(L, p3);
  StkId func = L->top;
  setobj2s(L, func, f);
  setobj2s(L, func + 1, p1);
  setobj2s(L, func + 2, p2);
  L->top += 3;
  if (!hasres)
    setobj2s(L, L->top++, p3);

  if (isLua(L->ci))
    luaD_call(L, func, hasres);
  else
    luaD_callnoyield(L, func, hasres);
  if (hasres) {
    p3 = restorestack(L, result);
    setobjs2s(L, p3, --L->top);
  }
}
