
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int lua_State ;


 char* luaL_checkstring (int *,int) ;
 int ** luaL_checkudata (int *,int,char*) ;
 int var_TriggerCallback (int *,char const*) ;
 int vlclua_push_ret (int *,int ) ;

__attribute__((used)) static int vlclua_trigger_callback( lua_State *L )
{
    vlc_object_t **pp_obj = luaL_checkudata( L, 1, "vlc_object" );
    const char *psz_var = luaL_checkstring( L, 2 );

    var_TriggerCallback( *pp_obj, psz_var );
    return vlclua_push_ret( L, 0 );
}
