
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int free (char*) ;
 char* input_item_GetName (int ) ;
 int lua_pushstring (int *,char*) ;
 int vlclua_input_item_get_internal (int *) ;

__attribute__((used)) static int vlclua_input_item_name( lua_State *L )
{
    char *name = input_item_GetName( vlclua_input_item_get_internal( L ) );
    lua_pushstring( L, name );
    free( name );
    return 1;
}
