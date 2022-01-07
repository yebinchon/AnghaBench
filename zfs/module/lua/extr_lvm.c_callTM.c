
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_8__ {scalar_t__ top; int ci; } ;
typedef TYPE_1__ lua_State ;
typedef int const TValue ;


 int isLua (int ) ;
 int luaD_call (TYPE_1__*,scalar_t__,int,int ) ;
 int const* restorestack (TYPE_1__*,int ) ;
 int savestack (TYPE_1__*,int const*) ;
 int setobj2s (TYPE_1__*,int ,int const*) ;
 int setobjs2s (TYPE_1__*,int const*,scalar_t__) ;

__attribute__((used)) static void callTM (lua_State *L, const TValue *f, const TValue *p1,
                    const TValue *p2, TValue *p3, int hasres) {
  if (L == ((void*)0)) return;

  ptrdiff_t result = savestack(L, p3);
  setobj2s(L, L->top++, f);
  setobj2s(L, L->top++, p1);
  setobj2s(L, L->top++, p2);
  if (!hasres)
    setobj2s(L, L->top++, p3);

  luaD_call(L, L->top - (4 - hasres), hasres, isLua(L->ci));
  if (hasres) {
    p3 = restorestack(L, result);
    setobjs2s(L, p3, --L->top);
  }
}
