
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* p_udp ;
typedef int lua_State ;
struct TYPE_2__ {scalar_t__ family; } ;


 scalar_t__ PF_INET6 ;
 int auxiliar_checkgroup (int *,char*,int) ;
 int lua_pushliteral (int *,char*) ;

__attribute__((used)) static int meth_getfamily(lua_State *L)
{
    p_udp udp = (p_udp) auxiliar_checkgroup(L, "udp{any}", 1);
    if (udp->family == PF_INET6) {
        lua_pushliteral(L, "inet6");
        return 1;
    } else {
        lua_pushliteral(L, "inet4");
        return 1;
    }
}
