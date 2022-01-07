
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* samples; scalar_t__ value; scalar_t__ updates; int lock; } ;
typedef TYPE_2__ input_rate_t ;
struct TYPE_4__ {void* date; } ;


 void* VLC_TICK_INVALID ;
 int vlc_mutex_init (int *) ;

__attribute__((used)) static void input_rate_Init(input_rate_t *rate)
{
    vlc_mutex_init(&rate->lock);
    rate->updates = 0;
    rate->value = 0;
    rate->samples[0].date = VLC_TICK_INVALID;
    rate->samples[1].date = VLC_TICK_INVALID;
}
