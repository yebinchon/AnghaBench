
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int gcrunning; int version; } ;
typedef TYPE_1__ global_State ;


 TYPE_1__* G (int *) ;
 int UNUSED (void*) ;
 int init_registry (int *,TYPE_1__*) ;
 int luaS_init (int *) ;
 int luaT_init (int *) ;
 int luaX_init (int *) ;
 int lua_version (int *) ;
 int luai_userstateopen (int *) ;
 int stack_init (int *,int *) ;

__attribute__((used)) static void f_luaopen (lua_State *L, void *ud) {
  global_State *g = G(L);
  UNUSED(ud);
  stack_init(L, L);
  init_registry(L, g);
  luaS_init(L);
  luaT_init(L);
  luaX_init(L);
  g->gcrunning = 1;
  g->version = lua_version(((void*)0));
  luai_userstateopen(L);
}
