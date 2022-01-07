
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int free (char*) ;
 char* luaL_checkstring (int *,int) ;
 int lua_gettop (int *) ;
 int lua_pushstring (int *,char*) ;
 int lua_remove (int *,int) ;
 char* vlc_uri_decode_duplicate (char const*) ;

__attribute__((used)) static int vlclua_decode_uri( lua_State *L )
{
    int i_top = lua_gettop( L );
    int i;
    for( i = 1; i <= i_top; i++ )
    {
        const char *psz_cstring = luaL_checkstring( L, 1 );
        char *psz_string = vlc_uri_decode_duplicate( psz_cstring );
        lua_remove( L, 1 );


        lua_pushstring( L, psz_string );
        free( psz_string );
    }
    return i_top;
}
