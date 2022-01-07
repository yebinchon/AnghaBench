
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;


 int BSON_REGEX ;
 int luaL_addchar (int *,int ) ;
 int luaL_addvalue (int *) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_checkstring (int *,int) ;
 int luaL_pushresult (int *) ;
 int lua_gettop (int *) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushvalue (int *,int) ;

__attribute__((used)) static int
lregex(lua_State *L) {
 luaL_checkstring(L,1);
 if (lua_gettop(L) < 2) {
  lua_pushliteral(L,"");
 }
 luaL_Buffer b;
 luaL_buffinit(L, &b);
 luaL_addchar(&b, 0);
 luaL_addchar(&b, BSON_REGEX);
 lua_pushvalue(L,1);
 luaL_addvalue(&b);
 luaL_addchar(&b,0);
 lua_pushvalue(L,2);
 luaL_addvalue(&b);
 luaL_addchar(&b,0);
 luaL_pushresult(&b);

 return 1;
}
