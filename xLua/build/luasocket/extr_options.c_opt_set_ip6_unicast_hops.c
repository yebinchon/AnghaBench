
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int p_socket ;
typedef int lua_State ;


 int IPPROTO_IPV6 ;
 int IPV6_UNICAST_HOPS ;
 int opt_setint (int *,int ,int ,int ) ;

int opt_set_ip6_unicast_hops(lua_State *L, p_socket ps)
{
  return opt_setint(L, ps, IPPROTO_IPV6, IPV6_UNICAST_HOPS);
}
