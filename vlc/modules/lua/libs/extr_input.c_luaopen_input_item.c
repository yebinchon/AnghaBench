
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int input_item_t ;


 int assert (int *) ;
 int lua_setfield (int *,int,char*) ;
 int vlclua_input_item_get (int *,int *) ;

void luaopen_input_item( lua_State *L, input_item_t *item )
{
    assert(item);
    vlclua_input_item_get( L, item );
    lua_setfield( L, -2, "item" );
}
