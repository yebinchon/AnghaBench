
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_ERRFILE ;
 scalar_t__ errno ;
 int lua_pushfstring (int *,char*,char const*,char const*,...) ;
 int lua_remove (int *,int) ;
 char* lua_tostring (int *,int) ;
 char* strerror (scalar_t__) ;

__attribute__((used)) static int
ngx_http_lua_clfactory_errfile(lua_State *L, const char *what, int fname_index)
{
    const char *serr;
    const char *filename;

    filename = lua_tostring(L, fname_index) + 1;

    if (errno) {
        serr = strerror(errno);
        lua_pushfstring(L, "cannot %s %s: %s", what, filename, serr);

    } else {
        lua_pushfstring(L, "cannot %s %s", what, filename);
    }

    lua_remove(L, fname_index);

    return LUA_ERRFILE;
}
