
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int p_unix ;
typedef int lua_State ;


 int auxiliar_checkclass (int *,char*,int) ;
 int auxiliar_setclass (int *,char*,int) ;
 char* luaL_checkstring (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int) ;
 int lua_pushstring (int *,char const*) ;
 char* unix_tryconnect (int ,char const*) ;

__attribute__((used)) static int meth_connect(lua_State *L)
{
    p_unix un = (p_unix) auxiliar_checkclass(L, "unix{master}", 1);
    const char *path = luaL_checkstring(L, 2);
    const char *err = unix_tryconnect(un, path);
    if (err) {
        lua_pushnil(L);
        lua_pushstring(L, err);
        return 2;
    }

    auxiliar_setclass(L, "unix{client}", 1);
    lua_pushnumber(L, 1);
    return 1;
}
