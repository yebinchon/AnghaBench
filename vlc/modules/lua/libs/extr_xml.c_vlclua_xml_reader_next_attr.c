
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_reader_t ;
typedef int lua_State ;


 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int lua_pushstring (int *,char const*) ;
 char* xml_ReaderNextAttr (int *,char const**) ;

__attribute__((used)) static int vlclua_xml_reader_next_attr( lua_State *L )
{
    xml_reader_t *p_reader = *(xml_reader_t**)luaL_checkudata( L, 1, "xml_reader" );
    const char *psz_value;
    const char *psz_name = xml_ReaderNextAttr( p_reader, &psz_value );
    if( !psz_name )
        return 0;

    lua_pushstring( L, psz_name );
    lua_pushstring( L, psz_value );
    return 2;
}
