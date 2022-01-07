
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_error (int *,char*) ;

__attribute__((used)) static int vlclua_vlm_new( lua_State *L )
{
    return luaL_error( L, "Cannot start VLM because it was disabled when compiling VLC." );
}
