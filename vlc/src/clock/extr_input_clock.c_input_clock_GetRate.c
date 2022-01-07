
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float rate; int lock; } ;
typedef TYPE_1__ input_clock_t ;


 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

float input_clock_GetRate( input_clock_t *cl )
{
    vlc_mutex_lock( &cl->lock );
    float rate = cl->rate;
    vlc_mutex_unlock( &cl->lock );

    return rate;
}
