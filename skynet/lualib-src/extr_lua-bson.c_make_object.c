
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;


 int luaL_addchar (int *,int) ;
 int luaL_addlstring (int *,void const*,size_t) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_pushresult (int *) ;

__attribute__((used)) static void
make_object(lua_State *L, int type, const void * ptr, size_t len) {
 luaL_Buffer b;
 luaL_buffinit(L, &b);
 luaL_addchar(&b, 0);
 luaL_addchar(&b, type);
 luaL_addlstring(&b, ptr, len);
 luaL_pushresult(&b);
}
