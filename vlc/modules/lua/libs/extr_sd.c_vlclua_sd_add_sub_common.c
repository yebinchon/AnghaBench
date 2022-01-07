
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int services_discovery_t ;
typedef int input_item_t ;


 int services_discovery_AddSubItem (int *,int *,int *) ;

__attribute__((used)) static int vlclua_sd_add_sub_common( services_discovery_t *p_sd,
                                     input_item_t **pp_node,
                                     input_item_t *p_input )
{
    if( *pp_node != ((void*)0) && p_input != ((void*)0) )
        services_discovery_AddSubItem( p_sd, *pp_node, p_input );
    return 1;
}
