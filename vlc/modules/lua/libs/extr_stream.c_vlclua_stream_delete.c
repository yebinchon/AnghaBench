
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stream_t ;
typedef int lua_State ;


 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int vlc_stream_Delete (int *) ;

__attribute__((used)) static int vlclua_stream_delete( lua_State *L )
{
    stream_t **pp_stream = (stream_t **)luaL_checkudata( L, 1, "stream" );
    vlc_stream_Delete( *pp_stream );
    return 0;
}
