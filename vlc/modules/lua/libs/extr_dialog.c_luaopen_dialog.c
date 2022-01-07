
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 int key_opaque ;
 int lua_SetDialogUpdate (int *,int ) ;
 int lua_getglobal (int *,char*) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushlightuserdata (int *,void*) ;
 int lua_setfield (int *,int,char*) ;
 int lua_settable (int *,int ) ;
 int vlclua_dialog_create ;

void luaopen_dialog( lua_State *L, void *opaque )
{
    lua_getglobal( L, "vlc" );
    lua_pushcfunction( L, vlclua_dialog_create );
    lua_setfield( L, -2, "dialog" );




    lua_pushlightuserdata( L, (void*) &key_opaque );
    lua_pushlightuserdata( L, opaque );
    lua_settable( L, LUA_REGISTRYINDEX );


    lua_SetDialogUpdate( L, 0 );
}
