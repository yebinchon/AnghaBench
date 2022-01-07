
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_error (int *) ;
 int lua_gettop (int *) ;
 int lua_pushstring (int *,char*) ;
 scalar_t__ lua_tolstring (int *,int,size_t*) ;
 int sha1hex (char*,char*,size_t) ;

int luaRedisSha1hexCommand(lua_State *lua) {
    int argc = lua_gettop(lua);
    char digest[41];
    size_t len;
    char *s;

    if (argc != 1) {
        lua_pushstring(lua, "wrong number of arguments");
        return lua_error(lua);
    }

    s = (char*)lua_tolstring(lua,1,&len);
    sha1hex(digest,s,len);
    lua_pushstring(lua,digest);
    return 1;
}
