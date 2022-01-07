
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ services_discovery_t ;
struct TYPE_6__ {int i_count; int ** pp_items; } ;
typedef TYPE_2__ services_discovery_sys_t ;
typedef int input_item_t ;


 int free (int **) ;
 int input_item_Release (int *) ;
 int services_discovery_RemoveItem (TYPE_1__*,int *) ;

__attribute__((used)) static void CloseDevice( services_discovery_t *p_sd )
{
    services_discovery_sys_t *p_sys = p_sd->p_sys;
    input_item_t **pp_items = p_sys->pp_items;

    if( pp_items != ((void*)0) )
    {
        for( int i_i = 0; i_i < p_sys->i_count; i_i++ )
        {
            if( pp_items[i_i] != ((void*)0) )
            {
                services_discovery_RemoveItem( p_sd, pp_items[i_i] );
                input_item_Release( pp_items[i_i] );
            }
        }
        free( pp_items );
    }
}
