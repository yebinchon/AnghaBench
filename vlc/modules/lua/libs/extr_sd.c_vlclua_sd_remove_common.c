
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int services_discovery_t ;
typedef int lua_State ;
typedef int input_item_t ;


 int input_item_Release (int *) ;
 int luaL_error (int *,char*) ;
 int services_discovery_RemoveItem (int *,int *) ;
 scalar_t__ vlclua_get_this (int *) ;

__attribute__((used)) static int vlclua_sd_remove_common( lua_State *L, input_item_t **pp_item )
{
    services_discovery_t *p_sd = (services_discovery_t *)vlclua_get_this( L );

    if (pp_item == ((void*)0))
        return luaL_error( L, "expected item" );

    input_item_t *p_item = *pp_item;
    if (*pp_item == ((void*)0))
        return luaL_error( L, "already removed item" );

    services_discovery_RemoveItem( p_sd, p_item );
    input_item_Release( p_item );

    *pp_item = ((void*)0);
    return 1;
}
