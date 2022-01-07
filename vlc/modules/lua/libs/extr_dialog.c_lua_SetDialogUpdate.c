
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 int key_update ;
 int lua_pushinteger (int *,int) ;
 int lua_pushlightuserdata (int *,void*) ;
 int lua_settable (int *,int ) ;

__attribute__((used)) static void lua_SetDialogUpdate( lua_State *L, int flag )
{

    lua_pushlightuserdata( L, (void*) &key_update );
    lua_pushinteger( L, flag );
    lua_settable( L, LUA_REGISTRYINDEX );
}
