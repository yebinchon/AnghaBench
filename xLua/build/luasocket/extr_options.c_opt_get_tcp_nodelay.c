
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int p_socket ;
typedef int lua_State ;


 int IPPROTO_TCP ;
 int TCP_NODELAY ;
 int opt_getboolean (int *,int ,int ,int ) ;

int opt_get_tcp_nodelay(lua_State *L, p_socket ps)
{
    return opt_getboolean(L, ps, IPPROTO_TCP, TCP_NODELAY);
}
