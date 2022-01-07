
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int top; TYPE_1__* ci; } ;
typedef TYPE_2__ lua_State ;
struct TYPE_8__ {int base; } ;


 int LUA_ERRRUN ;
 int incr_top (TYPE_2__*) ;
 int luaS_new (TYPE_2__*,char const*) ;
 int lua_unlock (TYPE_2__*) ;
 int setsvalue2s (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int resume_error (lua_State *L, const char *msg) {
  L->top = L->ci->base;
  setsvalue2s(L, L->top, luaS_new(L, msg));
  incr_top(L);
  lua_unlock(L);
  return LUA_ERRRUN;
}
