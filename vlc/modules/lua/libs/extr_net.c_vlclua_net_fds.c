
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int lua_pushinteger (int *,int ) ;
 int vlclua_fd_get_lua (int *,int) ;

__attribute__((used)) static int vlclua_net_fds( lua_State *L )
{
    int **ppi_fd = (int**)luaL_checkudata( L, 1, "net_listen" );
    int *pi_fd = *ppi_fd;

    int i_count = 0;
    while( pi_fd[i_count] != -1 )
        lua_pushinteger( L, vlclua_fd_get_lua( L, pi_fd[i_count++] ) );

    return i_count;
}
