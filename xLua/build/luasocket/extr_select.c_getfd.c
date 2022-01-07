
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_socket ;
typedef int lua_State ;


 int SOCKET_INVALID ;
 int lua_call (int *,int,int) ;
 int lua_gettable (int *,int) ;
 int lua_isnil (int *,int) ;
 scalar_t__ lua_isnumber (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushstring (int *,char*) ;
 int lua_pushvalue (int *,int) ;
 double lua_tonumber (int *,int) ;

__attribute__((used)) static t_socket getfd(lua_State *L) {
    t_socket fd = SOCKET_INVALID;
    lua_pushstring(L, "getfd");
    lua_gettable(L, -2);
    if (!lua_isnil(L, -1)) {
        lua_pushvalue(L, -2);
        lua_call(L, 1, 1);
        if (lua_isnumber(L, -1)) {
            double numfd = lua_tonumber(L, -1);
            fd = (numfd >= 0.0)? (t_socket) numfd: SOCKET_INVALID;
        }
    }
    lua_pop(L, 1);
    return fd;
}
