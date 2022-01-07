
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ VLC_SUCCESS ;
 char* luaL_checkstring (int *,int) ;
 int lua_newtable (int *) ;
 int lua_pushstring (int *,char*) ;
 int lua_rawseti (int *,int,int) ;
 scalar_t__ vlclua_dir_list (char const*,char***) ;
 int vlclua_dir_list_free (char**) ;

__attribute__((used)) static int vlclua_datadir_list( lua_State *L )
{
    const char *psz_dirname = luaL_checkstring( L, 1 );
    char **ppsz_dir_list = ((void*)0);
    int i = 1;

    if( vlclua_dir_list( psz_dirname, &ppsz_dir_list )
        != VLC_SUCCESS )
        return 0;
    lua_newtable( L );
    for( char **ppsz_dir = ppsz_dir_list; *ppsz_dir; ppsz_dir++ )
    {
        lua_pushstring( L, *ppsz_dir );
        lua_rawseti( L, -2, i );
        i ++;
    }
    vlclua_dir_list_free( ppsz_dir_list );
    return 1;
}
