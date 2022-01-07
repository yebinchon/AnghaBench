
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int lua_State ;
typedef int int64_t ;


 char* luaL_checkstring (int *,int) ;
 int ** luaL_checkudata (int *,int,char*) ;
 int lua_pushinteger (int *,int ) ;
 int var_IncInteger (int *,char const*) ;

__attribute__((used)) static int vlclua_inc_integer( lua_State *L )
{
    vlc_object_t **pp_obj = luaL_checkudata( L, 1, "vlc_object" );
    const char *psz_var = luaL_checkstring( L, 2 );
    int64_t i_val = var_IncInteger( *pp_obj, psz_var );

    lua_pushinteger( L, i_val );
    return 1;
}
