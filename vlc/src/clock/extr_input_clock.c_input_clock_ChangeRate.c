
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef float vlc_tick_t ;
struct TYPE_5__ {float system; } ;
struct TYPE_6__ {float system; } ;
struct TYPE_7__ {float rate; int lock; TYPE_1__ ref; TYPE_2__ last; scalar_t__ b_has_reference; } ;
typedef TYPE_3__ input_clock_t ;


 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void input_clock_ChangeRate( input_clock_t *cl, float rate )
{
    vlc_mutex_lock( &cl->lock );

    if( cl->b_has_reference )
    {


        cl->ref.system = cl->last.system - (vlc_tick_t) ((cl->last.system - cl->ref.system) / rate * cl->rate);
    }
    cl->rate = rate;

    vlc_mutex_unlock( &cl->lock );
}
