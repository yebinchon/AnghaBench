
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ luaL_newmetatable (int *,char*) ;
 int luaL_register (int *,int *,int ) ;
 int lua_newtable (int *) ;
 int lua_newuserdata (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;
 int vlclua_xml_reg ;

__attribute__((used)) static int vlclua_xml_create( lua_State *L )
{
    lua_newuserdata( L, 0 );

    if( luaL_newmetatable( L, "xml" ) )
    {
        lua_newtable( L );
        luaL_register( L, ((void*)0), vlclua_xml_reg );
        lua_setfield( L, -2, "__index" );
    }

    lua_setmetatable( L, -2 );
    return 1;
}
