
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_reader_t ;
typedef int vlc_object_t ;
typedef int stream_t ;
typedef int lua_State ;


 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*) ;
 scalar_t__ luaL_newmetatable (int *,char*) ;
 int luaL_register (int *,int *,int ) ;
 int lua_newtable (int *) ;
 int ** lua_newuserdata (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;
 int * vlclua_get_this (int *) ;
 int vlclua_xml_reader_delete ;
 int vlclua_xml_reader_reg ;
 int * xml_ReaderCreate (int *,int *) ;

__attribute__((used)) static int vlclua_xml_create_reader( lua_State *L )
{
    vlc_object_t *obj = vlclua_get_this( L );
    stream_t *p_stream = *(stream_t **)luaL_checkudata( L, 2, "stream" );

    xml_reader_t *p_reader = xml_ReaderCreate( obj, p_stream );
    if( !p_reader )
        return luaL_error( L, "XML reader creation failed." );

    xml_reader_t **pp_reader = lua_newuserdata( L, sizeof( xml_reader_t * ) );
    *pp_reader = p_reader;

    if( luaL_newmetatable( L, "xml_reader" ) )
    {
        lua_newtable( L );
        luaL_register( L, ((void*)0), vlclua_xml_reader_reg );
        lua_setfield( L, -2, "__index" );
        lua_pushcfunction( L, vlclua_xml_reader_delete );
        lua_setfield( L, -2, "__gc" );
    }

    lua_setmetatable( L, -2 );
    return 1;
}
