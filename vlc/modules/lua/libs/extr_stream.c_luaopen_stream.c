
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int vlclua_directory_stream_new ;
 int vlclua_memory_stream_new ;
 int vlclua_stream_new ;

void luaopen_stream( lua_State *L )
{
    lua_pushcfunction( L, vlclua_stream_new );
    lua_setfield( L, -2, "stream" );
    lua_pushcfunction( L, vlclua_memory_stream_new );
    lua_setfield( L, -2, "memory_stream" );
    lua_pushcfunction( L, vlclua_directory_stream_new );
    lua_setfield( L, -2, "directory_stream" );
}
