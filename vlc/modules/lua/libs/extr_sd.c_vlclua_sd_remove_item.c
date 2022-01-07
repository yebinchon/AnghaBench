
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int input_item_t ;


 int ** luaL_checkudata (int *,int,char*) ;
 int vlclua_sd_remove_common (int *,int **) ;

__attribute__((used)) static int vlclua_sd_remove_item( lua_State *L )
{
    input_item_t **pp_input = luaL_checkudata( L, 1, "input_item_t" );

    return vlclua_sd_remove_common( L, pp_input );
}
