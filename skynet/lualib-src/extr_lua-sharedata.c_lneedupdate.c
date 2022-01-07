
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctrl {scalar_t__ update; } ;
typedef int lua_State ;


 int lua_getuservalue (int *,int) ;
 int lua_pushlightuserdata (int *,scalar_t__) ;
 struct ctrl* lua_touserdata (int *,int) ;

__attribute__((used)) static int
lneedupdate(lua_State *L) {
 struct ctrl * c = lua_touserdata(L, 1);
 if (c->update) {
  lua_pushlightuserdata(L, c->update);
  lua_getuservalue(L, 1);
  return 2;
 }
 return 0;
}
