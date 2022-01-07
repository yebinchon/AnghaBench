
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int * resampler; int ** tab; } ;
typedef TYPE_1__ aout_filters_t ;


 int aout_FiltersPipelineFlush (int **,int) ;

void aout_FiltersFlush (aout_filters_t *filters)
{
    aout_FiltersPipelineFlush (filters->tab, filters->count);

    if (filters->resampler != ((void*)0))
        aout_FiltersPipelineFlush (&filters->resampler, 1);
}
