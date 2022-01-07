
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int free (char*) ;
 char* input_item_GetURI (int ) ;
 int lua_pushstring (int *,char*) ;
 int vlclua_input_item_get_internal (int *) ;

__attribute__((used)) static int vlclua_input_item_uri( lua_State *L )
{
    char *uri = input_item_GetURI( vlclua_input_item_get_internal( L ) );
    lua_pushstring( L, uri );
    free( uri );
    return 1;
}
