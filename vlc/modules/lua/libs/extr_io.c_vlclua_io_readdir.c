
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int DIR ;


 int closedir (int *) ;
 char* luaL_checkstring (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 int lua_newtable (int *) ;
 int lua_pushstring (int *,char const*) ;
 int lua_rawseti (int *,int,int) ;
 int * vlc_opendir (char const*) ;
 char* vlc_readdir (int *) ;

__attribute__((used)) static int vlclua_io_readdir( lua_State *L )
{
    if( lua_gettop( L ) < 1 )
        return luaL_error( L, "Usage: vlc.io.readdir(name)" );
    const char* psz_path = luaL_checkstring( L, 1 );
    DIR* p_dir = vlc_opendir( psz_path );
    if ( p_dir == ((void*)0) )
        return 0;

    lua_newtable( L );
    const char* psz_entry;
    int idx = 1;
    while ( ( psz_entry = vlc_readdir( p_dir ) ) != ((void*)0) )
    {
        lua_pushstring( L, psz_entry );
        lua_rawseti( L, -2, idx );
        idx++;
    }
    closedir( p_dir );
    return 1;
}
