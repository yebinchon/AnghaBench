
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef scalar_t__ VAProcFilterType ;
typedef int VADisplay ;
typedef int VAContextID ;


 int VAProcFilterCount ;
 int VA_CALL (int *,int ,int ,int ,scalar_t__*,unsigned int*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int vaQueryVideoProcFilters ;

int
vlc_vaapi_IsVideoProcFilterAvailable(vlc_object_t *o, VADisplay dpy,
                                     VAContextID ctx, VAProcFilterType filter)
{
    VAProcFilterType filters[VAProcFilterCount];
    unsigned int num_filters = VAProcFilterCount;

    VA_CALL(o, vaQueryVideoProcFilters, dpy, ctx, filters, &num_filters);
    for (unsigned int i = 0; i < num_filters; ++i)
        if (filter == filters[i])
            return VLC_SUCCESS;
    return VLC_EGENERIC;
error: return VLC_EGENERIC;
}
