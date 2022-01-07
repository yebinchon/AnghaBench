
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ resampling; int * resampler; } ;
typedef TYPE_1__ aout_filters_t ;



bool aout_FiltersAdjustResampling (aout_filters_t *filters, int adjust)
{
    if (filters->resampler == ((void*)0))
        return 0;

    if (adjust)
        filters->resampling += adjust;
    else
        filters->resampling = 0;
    return filters->resampling != 0;
}
