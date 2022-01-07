
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int p_socket ;
typedef int lua_State ;


 int IPPROTO_IPV6 ;
 int IPV6_ADD_MEMBERSHIP ;
 int opt_ip6_setmembership (int *,int ,int ,int ) ;

int opt_set_ip6_add_membership(lua_State *L, p_socket ps)
{
    return opt_ip6_setmembership(L, ps, IPPROTO_IPV6, IPV6_ADD_MEMBERSHIP);
}
