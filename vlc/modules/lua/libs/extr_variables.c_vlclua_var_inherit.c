
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int psz_string; } ;
typedef TYPE_1__ vlc_value_t ;
typedef int vlc_object_t ;
typedef int lua_State ;


 scalar_t__ LUA_TNIL ;
 scalar_t__ VLC_SUCCESS ;
 int VLC_VAR_STRING ;
 int config_GetType (char const*) ;
 int free (int ) ;
 char* luaL_checkstring (int *,int) ;
 int ** luaL_checkudata (int *,int,char*) ;
 int lua_pop (int *,int) ;
 scalar_t__ lua_type (int *,int) ;
 scalar_t__ var_Inherit (int *,char const*,int,TYPE_1__*) ;
 int * vlclua_get_this (int *) ;
 int vlclua_pushvalue (int *,int,TYPE_1__) ;

__attribute__((used)) static int vlclua_var_inherit( lua_State *L )
{
    vlc_value_t val;
    vlc_object_t *p_obj;
    if( lua_type( L, 1 ) == LUA_TNIL )
        p_obj = vlclua_get_this( L );
    else
    {
        vlc_object_t **pp_obj = luaL_checkudata( L, 1, "vlc_object" );
        p_obj = *pp_obj;
    }
    const char *psz_var = luaL_checkstring( L, 2 );

    int i_type = config_GetType( psz_var );
    if( var_Inherit( p_obj, psz_var, i_type, &val ) != VLC_SUCCESS )
        return 0;

    lua_pop( L, 2 );
    vlclua_pushvalue( L, i_type, val );
    if( i_type == VLC_VAR_STRING )
        free( val.psz_string );
    return 1;
}
