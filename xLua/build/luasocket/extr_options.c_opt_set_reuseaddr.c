
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int p_socket ;
typedef int lua_State ;


 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int opt_setboolean (int *,int ,int ,int ) ;

int opt_set_reuseaddr(lua_State *L, p_socket ps)
{
    return opt_setboolean(L, ps, SOL_SOCKET, SO_REUSEADDR);
}
