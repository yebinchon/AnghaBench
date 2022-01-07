
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* p_tcp ;
typedef int lua_State ;
struct TYPE_2__ {int sock; } ;


 int auxiliar_checkclass (int *,char*,int) ;
 int luaL_checkoption (int *,int,char*,char const**) ;
 int lua_pushnumber (int *,int) ;
 int socket_shutdown (int *,int) ;

__attribute__((used)) static int meth_shutdown(lua_State *L)
{

    static const char* methods[] = { "receive", "send", "both", ((void*)0) };
    p_tcp tcp = (p_tcp) auxiliar_checkclass(L, "tcp{client}", 1);
    int how = luaL_checkoption(L, 2, "both", methods);
    socket_shutdown(&tcp->sock, how);
    lua_pushnumber(L, 1);
    return 1;
}
