
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lock; int pp_slaves; int i_slaves; } ;
typedef TYPE_1__ input_item_t ;
struct TYPE_7__ {scalar_t__ i_priority; } ;
typedef TYPE_2__ input_item_slave_t ;


 scalar_t__ SLAVE_PRIORITY_MATCH_NONE ;
 int TAB_APPEND (int ,int ,TYPE_2__*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

int input_item_AddSlave(input_item_t *p_item, input_item_slave_t *p_slave)
{
    if( p_item == ((void*)0) || p_slave == ((void*)0)
     || p_slave->i_priority < SLAVE_PRIORITY_MATCH_NONE )
        return VLC_EGENERIC;

    vlc_mutex_lock( &p_item->lock );

    TAB_APPEND(p_item->i_slaves, p_item->pp_slaves, p_slave);

    vlc_mutex_unlock( &p_item->lock );
    return VLC_SUCCESS;
}
