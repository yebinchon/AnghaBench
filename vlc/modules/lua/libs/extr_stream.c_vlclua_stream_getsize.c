
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int stream_t ;
typedef int lua_State ;


 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*) ;
 int lua_pushnumber (int *,int ) ;
 int vlc_stream_GetSize (int *,int *) ;

__attribute__((used)) static int vlclua_stream_getsize( lua_State *L )
{
    stream_t **pp_stream = (stream_t **)luaL_checkudata( L, 1, "stream" );
    uint64_t i_size;
    int i_res = vlc_stream_GetSize( *pp_stream, &i_size );
    if ( i_res != 0 )
        return luaL_error( L, "Failed to get stream size" );
    lua_pushnumber( L, i_size );
    return 1;
}
