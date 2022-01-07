
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stream_t ;
typedef int lua_State ;


 scalar_t__ luaL_newmetatable (int *,char*) ;
 int luaL_register (int *,int *,int ) ;
 int lua_newtable (int *) ;
 int ** lua_newuserdata (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushnil (int *) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;
 int vlclua_stream_delete ;
 int vlclua_stream_reg ;

__attribute__((used)) static int vlclua_stream_new_inner( lua_State *L, stream_t *p_stream )
{
    if( !p_stream )
    {
        lua_pushnil( L );
        lua_pushliteral( L, "Error when opening stream" );
        return 2;
    }

    stream_t **pp_stream = lua_newuserdata( L, sizeof( stream_t * ) );
    *pp_stream = p_stream;

    if( luaL_newmetatable( L, "stream" ) )
    {
        lua_newtable( L );
        luaL_register( L, ((void*)0), vlclua_stream_reg );
        lua_setfield( L, -2, "__index" );
        lua_pushcfunction( L, vlclua_stream_delete );
        lua_setfield( L, -2, "__gc" );
    }

    lua_setmetatable( L, -2 );
    return 1;
}
