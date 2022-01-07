
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ t_socket ;
typedef int lua_State ;
typedef int lua_Number ;
typedef int fd_set ;


 scalar_t__ FD_ISSET (scalar_t__,int *) ;
 int lua_gettable (int *,int) ;
 int lua_pushnumber (int *,int) ;
 int lua_settable (int *,int) ;

__attribute__((used)) static void return_fd(lua_State *L, fd_set *set, t_socket max_fd,
        int itab, int tab, int start) {
    t_socket fd;
    for (fd = 0; fd < max_fd; fd++) {
        if (FD_ISSET(fd, set)) {
            lua_pushnumber(L, ++start);
            lua_pushnumber(L, (lua_Number) fd);
            lua_gettable(L, itab);
            lua_settable(L, tab);
        }
    }
}
