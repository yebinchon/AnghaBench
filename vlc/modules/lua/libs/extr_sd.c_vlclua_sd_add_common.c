
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int services_discovery_t ;
typedef int input_item_t ;


 int services_discovery_AddItem (int *,int *) ;

__attribute__((used)) static int vlclua_sd_add_common( services_discovery_t *p_sd,
                                 input_item_t *p_input )
{
    if( p_input != ((void*)0) )
        services_discovery_AddItem( p_sd, p_input );
    return 1;
}
