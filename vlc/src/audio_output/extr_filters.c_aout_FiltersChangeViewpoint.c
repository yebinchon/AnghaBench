
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_viewpoint_t ;
struct TYPE_3__ {int count; int tab; } ;
typedef TYPE_1__ aout_filters_t ;


 int aout_FiltersPipelineChangeViewpoint (int ,int ,int const*) ;

void aout_FiltersChangeViewpoint (aout_filters_t *filters,
                                  const vlc_viewpoint_t *vp)
{
    aout_FiltersPipelineChangeViewpoint (filters->tab, filters->count, vp);
}
