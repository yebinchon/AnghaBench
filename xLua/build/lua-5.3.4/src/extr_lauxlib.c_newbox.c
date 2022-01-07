
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {scalar_t__ bsize; int * box; } ;
typedef TYPE_1__ UBox ;


 int boxgc ;
 scalar_t__ luaL_newmetatable (int *,char*) ;
 scalar_t__ lua_newuserdata (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;
 void* resizebox (int *,int,size_t) ;

__attribute__((used)) static void *newbox (lua_State *L, size_t newsize) {
  UBox *box = (UBox *)lua_newuserdata(L, sizeof(UBox));
  box->box = ((void*)0);
  box->bsize = 0;
  if (luaL_newmetatable(L, "LUABOX")) {
    lua_pushcfunction(L, boxgc);
    lua_setfield(L, -2, "__gc");
  }
  lua_setmetatable(L, -2);
  return resizebox(L, -1, newsize);
}
