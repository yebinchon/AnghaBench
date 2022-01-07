
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t i_event; TYPE_1__** pp_event; TYPE_1__* p_current; } ;
typedef TYPE_2__ vlc_epg_t ;
typedef scalar_t__ int64_t ;
struct TYPE_4__ {scalar_t__ i_start; } ;



void vlc_epg_SetCurrent( vlc_epg_t *p_epg, int64_t i_start )
{
    size_t i;
    p_epg->p_current = ((void*)0);
    if( i_start < 0 )
        return;

    for( i = 0; i < p_epg->i_event; i++ )
    {
        if( p_epg->pp_event[i]->i_start == i_start )
        {
            p_epg->p_current = p_epg->pp_event[i];
            break;
        }
    }
}
