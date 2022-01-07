
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stream_t ;
typedef int lua_State ;


 int free (char*) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char*) ;
 char* vlc_stream_ReadLine (int *) ;

__attribute__((used)) static int vlclua_stream_readline( lua_State *L )
{
    stream_t **pp_stream = (stream_t **)luaL_checkudata( L, 1, "stream" );
    char *psz_line = vlc_stream_ReadLine( *pp_stream );
    if( psz_line )
    {
        lua_pushstring( L, psz_line );
        free( psz_line );
    }
    else
        lua_pushnil( L );
    return 1;
}
