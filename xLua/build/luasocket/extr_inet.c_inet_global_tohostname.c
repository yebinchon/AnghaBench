
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int h_name; } ;
typedef int lua_State ;


 int IO_DONE ;
 int inet_gethost (char const*,struct hostent**) ;
 int inet_pushresolved (int *,struct hostent*) ;
 char* luaL_checkstring (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,int ) ;
 int socket_hoststrerror (int) ;

__attribute__((used)) static int inet_global_tohostname(lua_State *L) {
    const char *address = luaL_checkstring(L, 1);
    struct hostent *hp = ((void*)0);
    int err = inet_gethost(address, &hp);
    if (err != IO_DONE) {
        lua_pushnil(L);
        lua_pushstring(L, socket_hoststrerror(err));
        return 2;
    }
    lua_pushstring(L, hp->h_name);
    inet_pushresolved(L, hp);
    return 2;
}
