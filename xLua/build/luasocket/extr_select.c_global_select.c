
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_timeout ;
typedef scalar_t__ t_socket ;
typedef int lua_State ;
typedef int fd_set ;


 int FD_ZERO (int *) ;
 scalar_t__ SOCKET_INVALID ;
 int check_dirty (int *,int,int,int *) ;
 int collect_fd (int *,int,int,int *,scalar_t__*) ;
 int luaL_error (int *,char*) ;
 double luaL_optnumber (int *,int,int) ;
 int lua_gettop (int *) ;
 int lua_newtable (int *) ;
 int lua_pushstring (int *,char*) ;
 int lua_settop (int *,int) ;
 int make_assoc (int *,int) ;
 int return_fd (int *,int *,scalar_t__,int,int,int) ;
 int socket_select (scalar_t__,int *,int *,int *,int *) ;
 int timeout_init (int *,double,int) ;
 int timeout_markstart (int *) ;

__attribute__((used)) static int global_select(lua_State *L) {
    int rtab, wtab, itab, ret, ndirty;
    t_socket max_fd = SOCKET_INVALID;
    fd_set rset, wset;
    t_timeout tm;
    double t = luaL_optnumber(L, 3, -1);
    FD_ZERO(&rset); FD_ZERO(&wset);
    lua_settop(L, 3);
    lua_newtable(L); itab = lua_gettop(L);
    lua_newtable(L); rtab = lua_gettop(L);
    lua_newtable(L); wtab = lua_gettop(L);
    collect_fd(L, 1, itab, &rset, &max_fd);
    collect_fd(L, 2, itab, &wset, &max_fd);
    ndirty = check_dirty(L, 1, rtab, &rset);
    t = ndirty > 0? 0.0: t;
    timeout_init(&tm, t, -1);
    timeout_markstart(&tm);
    ret = socket_select(max_fd+1, &rset, &wset, ((void*)0), &tm);
    if (ret > 0 || ndirty > 0) {
        return_fd(L, &rset, max_fd+1, itab, rtab, ndirty);
        return_fd(L, &wset, max_fd+1, itab, wtab, 0);
        make_assoc(L, rtab);
        make_assoc(L, wtab);
        return 2;
    } else if (ret == 0) {
        lua_pushstring(L, "timeout");
        return 3;
    } else {
        luaL_error(L, "select failed");
        return 3;
    }
}
