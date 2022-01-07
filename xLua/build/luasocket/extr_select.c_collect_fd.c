
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_socket ;
typedef int lua_State ;
typedef int lua_Number ;
typedef int fd_set ;


 int FD_SET (int,int *) ;
 int FD_SETSIZE ;
 int LUA_TTABLE ;
 int SOCKET_INVALID ;
 int getfd (int *) ;
 int luaL_argerror (int *,int,char*) ;
 int luaL_checktype (int *,int,int ) ;
 int lua_gettable (int *,int) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnumber (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_settable (int *,int) ;

__attribute__((used)) static void collect_fd(lua_State *L, int tab, int itab,
        fd_set *set, t_socket *max_fd) {
    int i = 1, n = 0;

    if (lua_isnil(L, tab)) return;

    luaL_checktype(L, tab, LUA_TTABLE);
    for ( ;; ) {
        t_socket fd;
        lua_pushnumber(L, i);
        lua_gettable(L, tab);
        if (lua_isnil(L, -1)) {
            lua_pop(L, 1);
            break;
        }

        fd = getfd(L);
        if (fd != SOCKET_INVALID) {





            if (fd >= FD_SETSIZE)
                luaL_argerror(L, tab, "descriptor too large for set size");

            FD_SET(fd, set);
            n++;

            if (*max_fd == SOCKET_INVALID || *max_fd < fd)
                *max_fd = fd;

            lua_pushnumber(L, (lua_Number) fd);
            lua_pushvalue(L, -2);
            lua_settable(L, itab);
        }
        lua_pop(L, 1);
        i = i + 1;
    }
}
