
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int lua_State ;


 char* luaL_checkstring (int *,int) ;
 int ** luaL_checkudata (int *,int,char*) ;
 int lua_pushboolean (int *,int) ;
 int var_ToggleBool (int *,char const*) ;

__attribute__((used)) static int vlclua_togglebool( lua_State *L )
{
    vlc_object_t **pp_obj = luaL_checkudata( L, 1, "vlc_object" );
    const char *psz_var = luaL_checkstring( L, 2 );
    bool b_val = var_ToggleBool( *pp_obj, psz_var );

    lua_pushboolean( L, b_val );
    return 1;
}
