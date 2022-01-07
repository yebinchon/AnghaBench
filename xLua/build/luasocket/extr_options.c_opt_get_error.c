
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int socklen_t ;
typedef int * p_socket ;
typedef int lua_State ;


 int SOL_SOCKET ;
 int SO_ERROR ;
 scalar_t__ getsockopt (int ,int ,int ,char*,int*) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char*) ;
 char* socket_strerror (int) ;

int opt_get_error(lua_State *L, p_socket ps)
{
    int val = 0;
    socklen_t len = sizeof(val);
    if (getsockopt(*ps, SOL_SOCKET, SO_ERROR, (char *) &val, &len) < 0) {
        lua_pushnil(L);
        lua_pushstring(L, "getsockopt failed");
        return 2;
    }
    lua_pushstring(L, socket_strerror(val));
    return 1;
}
