
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ t_socket ;
typedef TYPE_1__* p_udp ;
typedef int lua_State ;
struct TYPE_2__ {scalar_t__ sock; } ;


 int auxiliar_checkgroup (int *,char*,int) ;
 scalar_t__ luaL_checknumber (int *,int) ;

__attribute__((used)) static int meth_setfd(lua_State *L) {
    p_udp udp = (p_udp) auxiliar_checkgroup(L, "udp{any}", 1);
    udp->sock = (t_socket) luaL_checknumber(L, 2);
    return 0;
}
