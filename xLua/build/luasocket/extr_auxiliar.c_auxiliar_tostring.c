
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_error (int *) ;
 int lua_getmetatable (int *,int) ;
 int lua_gettable (int *,int) ;
 int lua_isstring (int *,int) ;
 int lua_istable (int *,int) ;
 int lua_pushfstring (int *,char*,int ,char*) ;
 int lua_pushstring (int *,char*) ;
 int lua_tostring (int *,int) ;
 int lua_touserdata (int *,int) ;
 int sprintf (char*,char*,int ) ;

int auxiliar_tostring(lua_State *L) {
    char buf[32];
    if (!lua_getmetatable(L, 1)) goto error;
    lua_pushstring(L, "__index");
    lua_gettable(L, -2);
    if (!lua_istable(L, -1)) goto error;
    lua_pushstring(L, "class");
    lua_gettable(L, -2);
    if (!lua_isstring(L, -1)) goto error;
    sprintf(buf, "%p", lua_touserdata(L, 1));
    lua_pushfstring(L, "%s: %s", lua_tostring(L, -1), buf);
    return 1;
error:
    lua_pushstring(L, "invalid object passed to 'auxiliar.c:__tostring'");
    lua_error(L);
    return 1;
}
