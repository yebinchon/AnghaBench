
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_3__ {int clock; } ;
typedef TYPE_1__ aout_filters_t ;


 int assert (int ) ;
 int vlc_clock_SetDelay (int ,int ) ;

void aout_FiltersSetClockDelay(aout_filters_t *filters, vlc_tick_t delay)
{
    assert(filters->clock);
    vlc_clock_SetDelay(filters->clock, delay);
}
