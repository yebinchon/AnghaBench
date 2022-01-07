
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int GCthreshold; int totalbytes; } ;
typedef TYPE_1__ global_State ;


 TYPE_1__* G (int *) ;
 int MEMERRMSG ;
 int MINSTRTABSIZE ;
 int UNUSED (void*) ;
 int gt (int *) ;
 int luaH_new (int *,int ,int) ;
 int luaS_fix (int ) ;
 int luaS_newliteral (int *,int ) ;
 int luaS_resize (int *,int ) ;
 int luaT_init (int *) ;
 int luaX_init (int *) ;
 int registry (int *) ;
 int sethvalue (int *,int ,int ) ;
 int stack_init (int *,int *) ;

__attribute__((used)) static void f_luaopen (lua_State *L, void *ud) {
  global_State *g = G(L);
  UNUSED(ud);
  stack_init(L, L);
  sethvalue(L, gt(L), luaH_new(L, 0, 2));
  sethvalue(L, registry(L), luaH_new(L, 0, 2));
  luaS_resize(L, MINSTRTABSIZE);
  luaT_init(L);
  luaX_init(L);
  luaS_fix(luaS_newliteral(L, MEMERRMSG));
  g->GCthreshold = 4*g->totalbytes;
}
