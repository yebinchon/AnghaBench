
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int input_item_IsPreparsed (int ) ;
 int lua_pushboolean (int *,int ) ;
 int vlclua_input_item_get_internal (int *) ;

__attribute__((used)) static int vlclua_input_item_is_preparsed( lua_State *L )
{
    lua_pushboolean( L, input_item_IsPreparsed( vlclua_input_item_get_internal( L ) ) );
    return 1;
}
