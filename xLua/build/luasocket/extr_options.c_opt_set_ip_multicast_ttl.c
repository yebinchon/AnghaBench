
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int p_socket ;
typedef int lua_State ;


 int IPPROTO_IP ;
 int IP_MULTICAST_TTL ;
 int opt_setint (int *,int ,int ,int ) ;

int opt_set_ip_multicast_ttl(lua_State *L, p_socket ps)
{
    return opt_setint(L, ps, IPPROTO_IP, IP_MULTICAST_TTL);
}
