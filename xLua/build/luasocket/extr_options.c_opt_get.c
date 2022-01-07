
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;
typedef int * p_socket ;
typedef int lua_State ;


 scalar_t__ getsockopt (int ,int,int,char*,int*) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char*) ;

__attribute__((used)) static
int opt_get(lua_State *L, p_socket ps, int level, int name, void *val, int* len)
{
    socklen_t socklen = *len;
    if (getsockopt(*ps, level, name, (char *) val, &socklen) < 0) {
        lua_pushnil(L);
        lua_pushstring(L, "getsockopt failed");
        return 2;
    }
    *len = socklen;
    return 0;
}
