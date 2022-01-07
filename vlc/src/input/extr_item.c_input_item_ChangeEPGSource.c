
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int i_epg; int lock; TYPE_1__** pp_epg; TYPE_1__* p_epg_table; } ;
typedef TYPE_2__ input_item_t ;
struct TYPE_4__ {int i_source_id; scalar_t__ b_present; } ;


 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void input_item_ChangeEPGSource( input_item_t *p_item, int i_source_id )
{
    vlc_mutex_lock( &p_item->lock );
    p_item->p_epg_table = ((void*)0);
    if( i_source_id > 0 )
    {

        for( int i = 0; i < p_item->i_epg; i++ )
        {
            if( p_item->pp_epg[i]->i_source_id == i_source_id &&
                p_item->pp_epg[i]->b_present )
            {
                p_item->p_epg_table = p_item->pp_epg[i];
                break;
            }
        }
    }
    vlc_mutex_unlock( &p_item->lock );
}
