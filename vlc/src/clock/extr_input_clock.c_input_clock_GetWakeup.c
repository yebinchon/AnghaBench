
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_5__ {scalar_t__ stream; } ;
struct TYPE_6__ {int lock; scalar_t__ i_buffering_duration; int drift; TYPE_1__ last; scalar_t__ b_has_reference; } ;
typedef TYPE_2__ input_clock_t ;


 scalar_t__ AvgGet (int *) ;
 int ClockStreamToSystem (TYPE_2__*,scalar_t__) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

vlc_tick_t input_clock_GetWakeup( input_clock_t *cl )
{
    vlc_tick_t i_wakeup = 0;

    vlc_mutex_lock( &cl->lock );


    if( cl->b_has_reference )
        i_wakeup = ClockStreamToSystem( cl, cl->last.stream + AvgGet( &cl->drift ) - cl->i_buffering_duration );

    vlc_mutex_unlock( &cl->lock );

    return i_wakeup;
}
