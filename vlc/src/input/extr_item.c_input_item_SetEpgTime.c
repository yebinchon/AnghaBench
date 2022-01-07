
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int lock; int i_epg_time; } ;
typedef TYPE_1__ input_item_t ;


 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void input_item_SetEpgTime( input_item_t *p_item, int64_t i_time )
{
    vlc_mutex_lock( &p_item->lock );
    p_item->i_epg_time = i_time;
    vlc_mutex_unlock( &p_item->lock );
}
