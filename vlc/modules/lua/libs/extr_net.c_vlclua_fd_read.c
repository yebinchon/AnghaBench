
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int lua_State ;


 int luaL_checkinteger (int *,int) ;
 int luaL_optinteger (int *,int,int) ;
 int lua_pushlstring (int *,char*,int) ;
 int lua_pushnil (int *) ;
 int read (int,char*,size_t) ;
 int vlclua_fd_get (int *,int ) ;

__attribute__((used)) static int vlclua_fd_read( lua_State *L )
{
    int fd = vlclua_fd_get( L, luaL_checkinteger( L, 1 ) );
    size_t i_len = (size_t)luaL_optinteger( L, 2, 1 );
    char psz_buffer[i_len];

    ssize_t i_ret = (fd != -1) ? read( fd, psz_buffer, i_len ) : -1;
    if( i_ret > 0 )
        lua_pushlstring( L, psz_buffer, i_ret );
    else
        lua_pushnil( L );
    return 1;
}
