
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int input_item_t ;


 int ** luaL_checkudata (int *,int,char*) ;
 int vlclua_sd_delete_common (int **) ;

__attribute__((used)) static int vlclua_sd_node_delete( lua_State *L )
{
    input_item_t **pp_item = luaL_checkudata( L, 1, "node" );

    return vlclua_sd_delete_common( pp_item );
}
