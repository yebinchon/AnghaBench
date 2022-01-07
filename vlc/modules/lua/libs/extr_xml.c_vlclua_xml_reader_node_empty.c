
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_reader_t ;
typedef int lua_State ;


 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int lua_pushinteger (int *,int ) ;
 int xml_ReaderIsEmptyElement (int *) ;

__attribute__((used)) static int vlclua_xml_reader_node_empty( lua_State* L )
{
    xml_reader_t *p_reader = *(xml_reader_t**)luaL_checkudata( L, 1, "xml_reader" );

    lua_pushinteger( L, xml_ReaderIsEmptyElement( p_reader ) );
    return 1;
}
