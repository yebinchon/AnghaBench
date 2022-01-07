
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int errno ;
 scalar_t__ gethostname (char*,int) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char*) ;
 char* socket_strerror (int ) ;

__attribute__((used)) static int inet_global_gethostname(lua_State *L)
{
    char name[257];
    name[256] = '\0';
    if (gethostname(name, 256) < 0) {
        lua_pushnil(L);
        lua_pushstring(L, socket_strerror(errno));
        return 2;
    } else {
        lua_pushstring(L, name);
        return 1;
    }
}
