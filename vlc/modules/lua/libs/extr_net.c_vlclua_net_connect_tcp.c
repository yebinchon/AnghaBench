
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int lua_State ;


 int luaL_checkinteger (int *,int) ;
 char* luaL_checkstring (int *,int) ;
 int lua_pushinteger (int *,int ) ;
 int net_ConnectTCP (int *,char const*,int) ;
 int vlclua_fd_map_safe (int *,int) ;
 int * vlclua_get_this (int *) ;

__attribute__((used)) static int vlclua_net_connect_tcp( lua_State *L )
{
    vlc_object_t *p_this = vlclua_get_this( L );
    const char *psz_host = luaL_checkstring( L, 1 );
    int i_port = luaL_checkinteger( L, 2 );
    int i_fd = net_ConnectTCP( p_this, psz_host, i_port );
    lua_pushinteger( L, vlclua_fd_map_safe( L, i_fd ) );
    return 1;
}
