
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int lua_State ;


 char* luaL_checkstring (int *,int) ;
 int lua_gettop (int *) ;
 int lua_pop (int *,int) ;
 int lua_pushboolean (int *,int) ;
 int strcmp (char const*,char*) ;
 int var_GetBool (int *,char const*) ;
 int var_SetBool (int *,char const*,int) ;
 int var_ToggleBool (int *,char const*) ;
 int vlclua_error (int *) ;

int vlclua_var_toggle_or_set( lua_State *L, vlc_object_t *p_obj,
                              const char *psz_name )
{
    bool b_bool;
    if( lua_gettop( L ) > 1 ) return vlclua_error( L );

    if( lua_gettop( L ) == 0 )
    {
        b_bool = var_ToggleBool( p_obj, psz_name );
        goto end;
    }


    const char *s = luaL_checkstring( L, -1 );
    lua_pop( L, 1 );

    if( s && !strcmp(s, "on") )
        b_bool = 1;
    else if( s && !strcmp(s, "off") )
        b_bool = 0;
    else
    {
        b_bool = var_GetBool( p_obj, psz_name );
        goto end;
    }

    if( b_bool != var_GetBool( p_obj, psz_name ) )
        var_SetBool( p_obj, psz_name, b_bool );

end:
    lua_pushboolean( L, b_bool );
    return 1;
}
