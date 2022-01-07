
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b_has_reference; int b_has_external_clock; int lock; int i_ts_max; int ref; } ;
typedef TYPE_1__ input_clock_t ;


 int VLC_TICK_INVALID ;
 int clock_point_Create (int ,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void input_clock_Reset( input_clock_t *cl )
{
    vlc_mutex_lock( &cl->lock );

    cl->b_has_reference = 0;
    cl->ref = clock_point_Create( VLC_TICK_INVALID, VLC_TICK_INVALID );
    cl->b_has_external_clock = 0;
    cl->i_ts_max = VLC_TICK_INVALID;

    vlc_mutex_unlock( &cl->lock );
}
