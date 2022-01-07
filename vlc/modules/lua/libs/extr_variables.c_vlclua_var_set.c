
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_value_t ;
typedef int vlc_object_t ;
typedef int lua_State ;


 char* luaL_checkstring (int *,int) ;
 int ** luaL_checkudata (int *,int,char*) ;
 int lua_pop (int *,int) ;
 int var_Set (int *,char const*,int ) ;
 int var_Type (int *,char const*) ;
 int vlclua_push_ret (int *,int) ;
 int vlclua_tovalue (int *,int,int *) ;

__attribute__((used)) static int vlclua_var_set( lua_State *L )
{
    vlc_value_t val;
    vlc_object_t **pp_obj = luaL_checkudata( L, 1, "vlc_object" );
    const char *psz_var = luaL_checkstring( L, 2 );

    int i_type = var_Type( *pp_obj, psz_var );
    vlclua_tovalue( L, i_type, &val );

    int i_ret = var_Set( *pp_obj, psz_var, val );

    lua_pop( L, 3 );
    return vlclua_push_ret( L, i_ret );
}
