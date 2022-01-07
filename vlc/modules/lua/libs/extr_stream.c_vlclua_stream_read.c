
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int stream_t ;
typedef int lua_State ;


 int free (int *) ;
 int luaL_checkinteger (int *,int) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int lua_pushlstring (int *,char const*,int) ;
 int lua_pushnil (int *) ;
 int * malloc (int) ;
 int vlc_stream_Read (int *,int *,int) ;
 int vlclua_error (int *) ;

__attribute__((used)) static int vlclua_stream_read( lua_State *L )
{
    int i_read;
    stream_t **pp_stream = (stream_t **)luaL_checkudata( L, 1, "stream" );
    int n = luaL_checkinteger( L, 2 );
    uint8_t *p_read = malloc( n );
    if( !p_read ) return vlclua_error( L );

    i_read = vlc_stream_Read( *pp_stream, p_read, n );
    if( i_read > 0 )
        lua_pushlstring( L, (const char *)p_read, i_read );
    else
        lua_pushnil( L );
    free( p_read );
    return 1;
}
