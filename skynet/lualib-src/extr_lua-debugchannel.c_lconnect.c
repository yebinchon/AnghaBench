
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel {int dummy; } ;
typedef int lua_State ;


 int luaL_error (int *,char*) ;
 struct channel* lua_touserdata (int *,int) ;
 int new_channel (int *,struct channel*) ;

__attribute__((used)) static int
lconnect(lua_State *L) {
 struct channel *c = lua_touserdata(L, 1);
 if (c == ((void*)0))
  return luaL_error(L, "Invalid channel pointer");
 new_channel(L, c);

 return 1;
}
