
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_6__ {int system; } ;
struct TYPE_5__ {int system; } ;
struct TYPE_7__ {int b_paused; scalar_t__ i_pause_date; int lock; TYPE_2__ last; TYPE_1__ ref; scalar_t__ b_has_reference; } ;
typedef TYPE_3__ input_clock_t ;


 int assert (int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void input_clock_ChangePause( input_clock_t *cl, bool b_paused, vlc_tick_t i_date )
{
    vlc_mutex_lock( &cl->lock );
    assert( (!cl->b_paused) != (!b_paused) );

    if( cl->b_paused )
    {
        const vlc_tick_t i_duration = i_date - cl->i_pause_date;

        if( cl->b_has_reference && i_duration > 0 )
        {
            cl->ref.system += i_duration;
            cl->last.system += i_duration;
        }
    }
    cl->i_pause_date = i_date;
    cl->b_paused = b_paused;

    vlc_mutex_unlock( &cl->lock );
}
