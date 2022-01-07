
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;


 int BSON_BINARY ;
 int luaL_addchar (int *,int ) ;
 int luaL_addvalue (int *) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_pushresult (int *) ;
 int lua_settop (int *,int) ;

__attribute__((used)) static int
lbinary(lua_State *L) {
 lua_settop(L,1);
 luaL_Buffer b;
 luaL_buffinit(L, &b);
 luaL_addchar(&b, 0);
 luaL_addchar(&b, BSON_BINARY);
 luaL_addchar(&b, 0);
 luaL_addvalue(&b);
 luaL_pushresult(&b);

 return 1;
}
