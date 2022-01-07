
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int * closef; } ;
typedef TYPE_1__ LStream ;


 int LUA_FILEHANDLE ;
 int luaL_setmetatable (int *,int ) ;
 scalar_t__ lua_newuserdata (int *,int) ;

__attribute__((used)) static LStream *newprefile (lua_State *L) {
  LStream *p = (LStream *)lua_newuserdata(L, sizeof(LStream));
  p->closef = ((void*)0);
  luaL_setmetatable(L, LUA_FILEHANDLE);
  return p;
}
