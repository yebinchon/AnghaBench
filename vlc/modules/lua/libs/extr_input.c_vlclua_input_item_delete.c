
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int input_item_t ;


 int input_item_Release (int *) ;
 int ** luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*) ;

__attribute__((used)) static int vlclua_input_item_delete( lua_State *L )
{
    input_item_t **pp_item = luaL_checkudata( L, 1, "input_item" );
    input_item_t *p_item = *pp_item;

    if( !p_item )
        return luaL_error( L, "script went completely foobar" );

    *pp_item = ((void*)0);
    input_item_Release( p_item );

    return 1;
}
