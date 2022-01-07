
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int lua_State ;


 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int lua_pushinteger (int *,int ) ;
 int net_Accept (int *,int*) ;
 int vlclua_fd_map_safe (int *,int) ;
 int * vlclua_get_this (int *) ;

__attribute__((used)) static int vlclua_net_accept( lua_State *L )
{
    vlc_object_t *p_this = vlclua_get_this( L );
    int **ppi_fd = (int**)luaL_checkudata( L, 1, "net_listen" );
    int i_fd = net_Accept( p_this, *ppi_fd );

    lua_pushinteger( L, vlclua_fd_map_safe( L, i_fd ) );
    return 1;
}
