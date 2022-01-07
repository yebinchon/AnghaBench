
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int clock; } ;
typedef TYPE_1__ aout_filters_t ;


 int assert (int ) ;
 int vlc_clock_Reset (int ) ;

void aout_FiltersResetClock(aout_filters_t *filters)
{
    assert(filters->clock);
    vlc_clock_Reset(filters->clock);
}
