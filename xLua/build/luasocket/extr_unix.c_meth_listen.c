
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* p_unix ;
typedef int lua_State ;
struct TYPE_2__ {int sock; } ;


 int IO_DONE ;
 int auxiliar_checkclass (int *,char*,int) ;
 int auxiliar_setclass (int *,char*,int) ;
 scalar_t__ luaL_optnumber (int *,int,int) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int) ;
 int lua_pushstring (int *,int ) ;
 int socket_listen (int *,int) ;
 int socket_strerror (int) ;

__attribute__((used)) static int meth_listen(lua_State *L)
{
    p_unix un = (p_unix) auxiliar_checkclass(L, "unix{master}", 1);
    int backlog = (int) luaL_optnumber(L, 2, 32);
    int err = socket_listen(&un->sock, backlog);
    if (err != IO_DONE) {
        lua_pushnil(L);
        lua_pushstring(L, socket_strerror(err));
        return 2;
    }

    auxiliar_setclass(L, "unix{server}", 1);
    lua_pushnumber(L, 1);
    return 1;
}
