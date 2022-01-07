
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int lua_State ;


 int luaL_checkinteger (int *,int) ;
 char* luaL_checkstring (int *,int) ;
 int luaL_error (int *,char*,char const*,int) ;
 scalar_t__ luaL_newmetatable (int *,char*) ;
 int luaL_register (int *,int *,int ) ;
 int lua_newtable (int *) ;
 int** lua_newuserdata (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;
 int net_ListenClose (int*) ;
 int* net_ListenTCP (int *,char const*,int) ;
 int vlclua_fd_get_lua (int *,int) ;
 int vlclua_fd_map (int *,int) ;
 int vlclua_fd_unmap (int *,int ) ;
 int * vlclua_get_this (int *) ;
 int vlclua_net_listen_close ;
 int vlclua_net_listen_reg ;

__attribute__((used)) static int vlclua_net_listen_tcp( lua_State *L )
{
    vlc_object_t *p_this = vlclua_get_this( L );
    const char *psz_host = luaL_checkstring( L, 1 );
    int i_port = luaL_checkinteger( L, 2 );
    int *pi_fd = net_ListenTCP( p_this, psz_host, i_port );
    if( pi_fd == ((void*)0) )
        return luaL_error( L, "Cannot listen on %s:%d", psz_host, i_port );

    for( unsigned i = 0; pi_fd[i] != -1; i++ )
        if( vlclua_fd_map( L, pi_fd[i] ) == -1 )
        {
            while( i > 0 )
                vlclua_fd_unmap( L, vlclua_fd_get_lua( L, pi_fd[--i] ) );

            net_ListenClose( pi_fd );
            return luaL_error( L, "Cannot listen on %s:%d", psz_host, i_port );
        }

    int **ppi_fd = lua_newuserdata( L, sizeof( int * ) );
    *ppi_fd = pi_fd;

    if( luaL_newmetatable( L, "net_listen" ) )
    {
        lua_newtable( L );
        luaL_register( L, ((void*)0), vlclua_net_listen_reg );
        lua_setfield( L, -2, "__index" );
        lua_pushcfunction( L, vlclua_net_listen_close );
        lua_setfield( L, -2, "__gc" );
    }

    lua_setmetatable( L, -2 );
    return 1;
}
