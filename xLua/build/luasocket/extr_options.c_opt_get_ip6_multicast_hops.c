
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int p_socket ;
typedef int lua_State ;


 int IPPROTO_IPV6 ;
 int IPV6_MULTICAST_HOPS ;
 int opt_getint (int *,int ,int ,int ) ;

int opt_get_ip6_multicast_hops(lua_State *L, p_socket ps)
{
  return opt_getint(L, ps, IPPROTO_IPV6, IPV6_MULTICAST_HOPS);
}
