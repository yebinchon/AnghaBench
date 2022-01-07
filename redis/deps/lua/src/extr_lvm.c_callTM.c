
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
typedef int TValue ;


 int luaD_call (TYPE_1__*,scalar_t__,int ) ;
 int luaD_checkstack (TYPE_1__*,int) ;
 int setobj2s (TYPE_1__*,scalar_t__,int const*) ;

__attribute__((used)) static void callTM (lua_State *L, const TValue *f, const TValue *p1,
                    const TValue *p2, const TValue *p3) {
  setobj2s(L, L->top, f);
  setobj2s(L, L->top+1, p1);
  setobj2s(L, L->top+2, p2);
  setobj2s(L, L->top+3, p3);
  luaD_checkstack(L, 4);
  L->top += 4;
  luaD_call(L, L->top - 4, 0);
}
