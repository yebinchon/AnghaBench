
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ status; TYPE_2__* ci; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_7__ {int extra; int func; } ;
typedef int StkId ;
typedef TYPE_2__ CallInfo ;


 scalar_t__ LUA_YIELD ;
 int restorestack (TYPE_1__*,int ) ;
 int savestack (TYPE_1__*,int ) ;

__attribute__((used)) static void swapextra (lua_State *L) {
  if (L->status == LUA_YIELD) {
    CallInfo *ci = L->ci;
    StkId temp = ci->func;
    ci->func = restorestack(L, ci->extra);
    ci->extra = savestack(L, temp);
  }
}
