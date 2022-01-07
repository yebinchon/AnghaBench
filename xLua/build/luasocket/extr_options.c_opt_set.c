
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * p_socket ;
typedef int lua_State ;


 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int) ;
 int lua_pushstring (int *,char*) ;
 scalar_t__ setsockopt (int ,int,int,char*,int) ;

__attribute__((used)) static
int opt_set(lua_State *L, p_socket ps, int level, int name, void *val, int len)
{
    if (setsockopt(*ps, level, name, (char *) val, len) < 0) {
        lua_pushnil(L);
        lua_pushstring(L, "setsockopt failed");
        return 2;
    }
    lua_pushnumber(L, 1);
    return 1;
}
