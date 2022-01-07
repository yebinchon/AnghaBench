
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_viewpoint_t ;
typedef int filter_t ;


 int filter_ChangeViewpoint (int * const,int const*) ;

__attribute__((used)) static void aout_FiltersPipelineChangeViewpoint(filter_t *const *filters,
                                                unsigned count,
                                                const vlc_viewpoint_t *vp)
{
    for (unsigned i = 0; i < count; i++)
        filter_ChangeViewpoint (filters[i], vp);
}
