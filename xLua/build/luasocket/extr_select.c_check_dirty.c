
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ t_socket ;
typedef int lua_State ;
typedef int fd_set ;


 int FD_CLR (scalar_t__,int *) ;
 scalar_t__ SOCKET_INVALID ;
 scalar_t__ dirty (int *) ;
 scalar_t__ getfd (int *) ;
 int lua_gettable (int *,int) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnumber (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_settable (int *,int) ;

__attribute__((used)) static int check_dirty(lua_State *L, int tab, int dtab, fd_set *set) {
    int ndirty = 0, i = 1;
    if (lua_isnil(L, tab))
        return 0;
    for ( ;; ) {
        t_socket fd;
        lua_pushnumber(L, i);
        lua_gettable(L, tab);
        if (lua_isnil(L, -1)) {
            lua_pop(L, 1);
            break;
        }
        fd = getfd(L);
        if (fd != SOCKET_INVALID && dirty(L)) {
            lua_pushnumber(L, ++ndirty);
            lua_pushvalue(L, -2);
            lua_settable(L, dtab);
            FD_CLR(fd, set);
        }
        lua_pop(L, 1);
        i = i + 1;
    }
    return ndirty;
}
