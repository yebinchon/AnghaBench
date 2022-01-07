
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int services_discovery_t ;
typedef int lua_State ;
typedef int input_item_t ;


 scalar_t__ luaL_checkudata (int *,int,char*) ;
 scalar_t__ vlclua_get_this (int *) ;
 int vlclua_sd_add_sub_common (int *,int **,int ) ;
 int vlclua_sd_create_node (int *,int *) ;

__attribute__((used)) static int vlclua_node_add_subnode( lua_State *L )
{
    services_discovery_t *p_sd = (services_discovery_t *)vlclua_get_this( L );
    input_item_t **pp_node = (input_item_t **)luaL_checkudata( L, 1, "node" );

    return vlclua_sd_add_sub_common( p_sd, pp_node,
                                     vlclua_sd_create_node( p_sd, L ) );
}
