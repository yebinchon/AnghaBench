
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int stream_t ;
typedef int lua_State ;
typedef scalar_t__ lua_Integer ;


 scalar_t__ luaL_checkinteger (int *,int) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*) ;
 int lua_pushboolean (int *,int) ;
 int vlc_stream_Seek (int *,int ) ;

__attribute__((used)) static int vlclua_stream_seek( lua_State *L )
{
    stream_t **pp_stream = (stream_t **)luaL_checkudata( L, 1, "stream" );
    lua_Integer i_offset = luaL_checkinteger( L, 2 );
    if ( i_offset < 0 )
        return luaL_error( L, "Invalid negative seek offset" );
    int i_res = vlc_stream_Seek( *pp_stream, (uint64_t)i_offset );
    lua_pushboolean( L, i_res == 0 );
    return 1;
}
