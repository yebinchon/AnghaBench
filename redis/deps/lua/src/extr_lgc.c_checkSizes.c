
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {scalar_t__ nuse; int size; } ;
struct TYPE_5__ {int buff; TYPE_1__ strt; } ;
typedef TYPE_2__ global_State ;


 TYPE_2__* G (int *) ;
 int LUA_MINBUFFER ;
 int MINSTRTABSIZE ;
 scalar_t__ cast (int ,int) ;
 int lu_int32 ;
 int luaS_resize (int *,int) ;
 int luaZ_resizebuffer (int *,int *,size_t) ;
 int luaZ_sizebuffer (int *) ;

__attribute__((used)) static void checkSizes (lua_State *L) {
  global_State *g = G(L);

  if (g->strt.nuse < cast(lu_int32, g->strt.size/4) &&
      g->strt.size > MINSTRTABSIZE*2)
    luaS_resize(L, g->strt.size/2);

  if (luaZ_sizebuffer(&g->buff) > LUA_MINBUFFER*2) {
    size_t newsize = luaZ_sizebuffer(&g->buff) / 2;
    luaZ_resizebuffer(L, &g->buff, newsize);
  }
}
