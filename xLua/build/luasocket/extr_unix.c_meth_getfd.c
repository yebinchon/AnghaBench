
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* p_unix ;
typedef int lua_State ;
struct TYPE_2__ {scalar_t__ sock; } ;


 int auxiliar_checkgroup (int *,char*,int) ;
 int lua_pushnumber (int *,int) ;

__attribute__((used)) static int meth_getfd(lua_State *L) {
    p_unix un = (p_unix) auxiliar_checkgroup(L, "unix{any}", 1);
    lua_pushnumber(L, (int) un->sock);
    return 1;
}
