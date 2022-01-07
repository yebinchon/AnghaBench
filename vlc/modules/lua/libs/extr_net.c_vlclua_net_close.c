
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_checkinteger (int *,int) ;
 int vlclua_fd_unmap_safe (int *,int) ;

__attribute__((used)) static int vlclua_net_close( lua_State *L )
{
    int i_fd = luaL_checkinteger( L, 1 );
    vlclua_fd_unmap_safe( L, i_fd );
    return 0;
}
