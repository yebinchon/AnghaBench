
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_checkinteger (int *,int) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 scalar_t__ luaL_optinteger (int *,int,size_t) ;
 int lua_pushinteger (int *,int) ;
 int vlc_write (int,char const*,size_t) ;
 int vlclua_fd_get (int *,int ) ;

__attribute__((used)) static int vlclua_fd_write( lua_State *L )
{
    int fd = vlclua_fd_get( L, luaL_checkinteger( L, 1 ) );
    size_t i_len;
    const char *psz_buffer = luaL_checklstring( L, 2, &i_len );

    i_len = (size_t)luaL_optinteger( L, 3, i_len );
    lua_pushinteger( L, (fd != -1) ? vlc_write( fd, psz_buffer, i_len ) : -1 );
    return 1;
}
