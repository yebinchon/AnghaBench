
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;
typedef int d ;


 int BSON_DATE ;
 int luaL_addchar (int *,int ) ;
 int luaL_addlstring (int *,char const*,int) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_checkinteger (int *,int) ;
 int luaL_pushresult (int *) ;

__attribute__((used)) static int
ldate(lua_State *L) {
 int d = luaL_checkinteger(L,1);
 luaL_Buffer b;
 luaL_buffinit(L, &b);
 luaL_addchar(&b, 0);
 luaL_addchar(&b, BSON_DATE);
 luaL_addlstring(&b, (const char *)&d, sizeof(d));
 luaL_pushresult(&b);

 return 1;
}
