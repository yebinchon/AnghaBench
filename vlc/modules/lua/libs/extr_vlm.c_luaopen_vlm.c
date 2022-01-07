
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int vlclua_vlm_new ;

void luaopen_vlm( lua_State *L )
{
    lua_pushcfunction( L, vlclua_vlm_new );
    lua_setfield( L, -2, "vlm" );
}
