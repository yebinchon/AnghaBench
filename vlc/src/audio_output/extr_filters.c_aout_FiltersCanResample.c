
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * resampler; } ;
typedef TYPE_1__ aout_filters_t ;



bool aout_FiltersCanResample (aout_filters_t *filters)
{
    return (filters->resampler != ((void*)0));
}
