
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int services_discovery_t ;
typedef int lua_State ;


 scalar_t__ vlclua_get_this (int *) ;
 int vlclua_sd_add_common (int *,int ) ;
 int vlclua_sd_create_item (int *,int *) ;

__attribute__((used)) static int vlclua_sd_add_item( lua_State *L )
{
    services_discovery_t *p_sd = (services_discovery_t *)vlclua_get_this( L );

    return vlclua_sd_add_common( p_sd, vlclua_sd_create_item( p_sd, L ) );
}
