
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* p_udp ;
typedef int lua_State ;
struct TYPE_2__ {int family; int sock; } ;


 int auxiliar_checkclass (int *,char*,int) ;
 int inet_meth_getpeername (int *,int *,int ) ;

__attribute__((used)) static int meth_getpeername(lua_State *L) {
    p_udp udp = (p_udp) auxiliar_checkclass(L, "udp{connected}", 1);
    return inet_meth_getpeername(L, &udp->sock, udp->family);
}
