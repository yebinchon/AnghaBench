
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 int key_update ;
 int luaL_checkinteger (int *,int) ;
 int lua_gettable (int *,int ) ;
 int lua_pushlightuserdata (int *,void*) ;

__attribute__((used)) static int lua_GetDialogUpdate( lua_State *L )
{

    lua_pushlightuserdata( L, (void*) &key_update );
    lua_gettable( L, LUA_REGISTRYINDEX );
    return luaL_checkinteger( L, -1 );
}
