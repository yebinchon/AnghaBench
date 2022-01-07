
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {int count; scalar_t__ clock; int ** tab; int * resampler; } ;
typedef TYPE_1__ aout_filters_t ;


 int VisualizationCallback ;
 int aout_FiltersPipelineDestroy (int **,int) ;
 int free (TYPE_1__*) ;
 int var_DelCallback (int *,char*,int ,int *) ;
 int vlc_clock_Delete (scalar_t__) ;

void aout_FiltersDelete (vlc_object_t *obj, aout_filters_t *filters)
{
    if (filters->resampler != ((void*)0))
        aout_FiltersPipelineDestroy (&filters->resampler, 1);
    aout_FiltersPipelineDestroy (filters->tab, filters->count);
    var_DelCallback(obj, "visual", VisualizationCallback, ((void*)0));
    if (filters->clock)
        vlc_clock_Delete(filters->clock);
    free (filters);
}
