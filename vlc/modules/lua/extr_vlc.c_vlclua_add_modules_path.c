
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char DIR_SEP_CHAR ;
 int free (char*) ;
 int lua_concat (int *,int) ;
 int lua_getfield (int *,int,char*) ;
 int lua_getglobal (int *,char*) ;
 int lua_pop (int *,int) ;
 int lua_setfield (int *,int,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char const*) ;
 char* strrchr (char*,char) ;
 scalar_t__ vlclua_add_modules_path_inner (int *,char*) ;
 int vlclua_dir_list (char*,char***) ;
 int vlclua_dir_list_free (char**) ;

int vlclua_add_modules_path( lua_State *L, const char *psz_filename )
{





    char *psz_path = strdup( psz_filename );
    if( !psz_path )
        return 1;

    char *psz_char = strrchr( psz_path, DIR_SEP_CHAR );
    if( !psz_char )
    {
        free( psz_path );
        return 1;
    }
    *psz_char = '\0';


    psz_char = strrchr( psz_path, DIR_SEP_CHAR );
    if( !psz_char )
    {
        free( psz_path );
        return 1;
    }
    *psz_char = '\0';


    int count = 0;
    lua_getglobal( L, "package" );


    count += vlclua_add_modules_path_inner( L, psz_path );
    *psz_char = DIR_SEP_CHAR;


    count += vlclua_add_modules_path_inner( L, psz_path );

    char **ppsz_dir_list = ((void*)0);
    vlclua_dir_list( psz_char+1 , &ppsz_dir_list );
    char **ppsz_dir = ppsz_dir_list;

    for( ; *ppsz_dir && strcmp( *ppsz_dir, psz_path ); ppsz_dir++ );
    free( psz_path );

    for( ; *ppsz_dir; ppsz_dir++ )
    {
        psz_path = *ppsz_dir;


        psz_char = strrchr( psz_path, DIR_SEP_CHAR );
        if( !psz_char )
        {
            vlclua_dir_list_free( ppsz_dir_list );
            return 1;
        }

        *psz_char = '\0';
        count += vlclua_add_modules_path_inner( L, psz_path );
        *psz_char = DIR_SEP_CHAR;
        count += vlclua_add_modules_path_inner( L, psz_path );
    }

    lua_getfield( L, -(count+1), "path" );
    lua_concat( L, count+1 );
    lua_setfield( L, -2, "path");
    lua_pop( L, 1 );

    vlclua_dir_list_free( ppsz_dir_list );
    return 0;
}
