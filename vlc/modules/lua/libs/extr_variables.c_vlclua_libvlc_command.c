
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* psz_string; } ;
typedef TYPE_1__ vlc_value_t ;
typedef int vlc_object_t ;
typedef int lua_State ;


 int * VLC_OBJECT (int ) ;
 int VLC_VAR_ISCOMMAND ;
 char* luaL_checkstring (int *,int) ;
 int luaL_error (int *,char*,char const*) ;
 scalar_t__ luaL_optstring (int *,int,char*) ;
 int lua_pop (int *,int) ;
 int var_Set (int *,char const*,TYPE_1__) ;
 int var_Type (int *,char const*) ;
 int vlc_object_instance (int *) ;
 int * vlclua_get_this (int *) ;
 int vlclua_push_ret (int *,int) ;

__attribute__((used)) static int vlclua_libvlc_command( lua_State *L )
{
    vlc_object_t * p_this = vlclua_get_this( L );
    vlc_object_t *vlc = VLC_OBJECT(vlc_object_instance(p_this));
    vlc_value_t val_arg;

    const char *psz_cmd = luaL_checkstring( L, 1 );
    val_arg.psz_string = (char*)luaL_optstring( L, 2, "" );

    int i_type = var_Type( vlc, psz_cmd );
    if( ! (i_type & VLC_VAR_ISCOMMAND) )
    {
        return luaL_error( L, "libvlc's \"%s\" is not a command",
                           psz_cmd );
    }

    int i_ret = var_Set( vlc, psz_cmd, val_arg );
    lua_pop( L, 2 );

    return vlclua_push_ret( L, i_ret );
}
