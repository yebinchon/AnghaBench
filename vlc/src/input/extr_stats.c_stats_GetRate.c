
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* samples; } ;
typedef TYPE_2__ input_rate_t ;
struct TYPE_4__ {scalar_t__ date; float value; } ;


 scalar_t__ VLC_TICK_INVALID ;

__attribute__((used)) static float stats_GetRate(const input_rate_t *rate)
{
    if (rate->samples[1].date == VLC_TICK_INVALID)
        return 0.;

    return (rate->samples[0].value - rate->samples[1].value)
        / (float)(rate->samples[0].date - rate->samples[1].date);
}
