
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int vlclua_xml_create ;

void luaopen_xml( lua_State *L )
{
    lua_pushcfunction( L, vlclua_xml_create );
    lua_setfield( L, -2, "xml" );
}
