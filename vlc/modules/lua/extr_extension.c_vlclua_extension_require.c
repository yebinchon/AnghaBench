
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int lua_State ;
struct TYPE_3__ {int psz_name; } ;
typedef TYPE_1__ extension_t ;


 int asprintf (char**,char*,char*,char const*) ;
 int free (char*) ;
 char* luaL_checkstring (int *,int) ;
 int luaL_error (int *,char*,...) ;
 int msg_Dbg (int *,char*,char const*) ;
 char* strdup (int ) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;
 int vlclua_dofile (int *,int *,char*) ;
 TYPE_1__* vlclua_extension_get (int *) ;
 int * vlclua_get_this (int *) ;

__attribute__((used)) static int vlclua_extension_require( lua_State *L )
{
    const char *psz_module = luaL_checkstring( L, 1 );
    vlc_object_t *p_this = vlclua_get_this( L );
    extension_t *p_ext = vlclua_extension_get( L );
    msg_Dbg( p_this, "loading module '%s' from extension package",
             psz_module );
    char *psz_fullpath, *psz_package, *sep;
    psz_package = strdup( p_ext->psz_name );
    sep = strrchr( psz_package, '/' );
    if( !sep )
    {
        free( psz_package );
        return luaL_error( L, "could not find package name" );
    }
    *sep = '\0';
    if( -1 == asprintf( &psz_fullpath,
                        "%s/modules/%s.luac", psz_package, psz_module ) )
    {
        free( psz_package );
        return 1;
    }
    int i_ret = vlclua_dofile( p_this, L, psz_fullpath );
    if( i_ret != 0 )
    {

        psz_fullpath[ strlen( psz_fullpath ) - 1 ] = '\0';
        i_ret = vlclua_dofile( p_this, L, psz_fullpath );
    }
    free( psz_fullpath );
    free( psz_package );
    if( i_ret != 0 )
    {
        return luaL_error( L, "unable to load module '%s' from package",
                           psz_module );
    }
    return 0;
}
