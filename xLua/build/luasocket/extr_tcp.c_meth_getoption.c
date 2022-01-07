
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* p_tcp ;
typedef int lua_State ;
struct TYPE_2__ {int sock; } ;


 int auxiliar_checkgroup (int *,char*,int) ;
 int opt_meth_getoption (int *,int ,int *) ;
 int optget ;

__attribute__((used)) static int meth_getoption(lua_State *L)
{
    p_tcp tcp = (p_tcp) auxiliar_checkgroup(L, "tcp{any}", 1);
    return opt_meth_getoption(L, optget, &tcp->sock);
}
