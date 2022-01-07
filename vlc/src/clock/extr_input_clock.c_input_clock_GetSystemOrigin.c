
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_4__ {int system; } ;
struct TYPE_5__ {int lock; int i_pts_delay; TYPE_1__ ref; int b_has_reference; } ;
typedef TYPE_2__ input_clock_t ;


 int assert (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void input_clock_GetSystemOrigin( input_clock_t *cl, vlc_tick_t *pi_system, vlc_tick_t *pi_delay )
{
    vlc_mutex_lock( &cl->lock );

    assert( cl->b_has_reference );

    *pi_system = cl->ref.system;
    if( pi_delay )
        *pi_delay = cl->i_pts_delay;

    vlc_mutex_unlock( &cl->lock );
}
