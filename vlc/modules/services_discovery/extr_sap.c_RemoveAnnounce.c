
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ services_discovery_t ;
struct TYPE_10__ {int pp_announces; int i_announces; } ;
typedef TYPE_2__ services_discovery_sys_t ;
struct TYPE_11__ {int * p_item; int * p_sdp; } ;
typedef TYPE_3__ sap_announce_t ;


 int FreeSDP (int *) ;
 int TAB_REMOVE (int ,int ,TYPE_3__*) ;
 int VLC_SUCCESS ;
 int free (TYPE_3__*) ;
 int input_item_Release (int *) ;
 int services_discovery_RemoveItem (TYPE_1__*,int *) ;

__attribute__((used)) static int RemoveAnnounce( services_discovery_t *p_sd,
                           sap_announce_t *p_announce )
{
    if( p_announce->p_sdp )
    {
        FreeSDP( p_announce->p_sdp );
        p_announce->p_sdp = ((void*)0);
    }

    if( p_announce->p_item )
    {
        services_discovery_RemoveItem( p_sd, p_announce->p_item );
        input_item_Release( p_announce->p_item );
        p_announce->p_item = ((void*)0);
    }

    services_discovery_sys_t *p_sys = p_sd->p_sys;
    TAB_REMOVE(p_sys->i_announces, p_sys->pp_announces, p_announce);
    free( p_announce );

    return VLC_SUCCESS;
}
