
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_6__ {int cache; int * dec_device; scalar_t__ dest_pics; } ;
typedef TYPE_2__ filter_sys_t ;


 int CopyCleanCache (int *) ;
 int free (TYPE_2__* const) ;
 int picture_pool_Release (scalar_t__) ;
 int vlc_vaapi_FilterReleaseInstance (TYPE_1__*,int *) ;

void
vlc_vaapi_CloseChroma(vlc_object_t *obj)
{
    filter_t *filter = (filter_t *)obj;
    filter_sys_t *const filter_sys = filter->p_sys;

    if (filter_sys->dest_pics)
        picture_pool_Release(filter_sys->dest_pics);
    if (filter_sys->dec_device != ((void*)0))
        vlc_vaapi_FilterReleaseInstance(filter, filter_sys->dec_device);
    CopyCleanCache(&filter_sys->cache);

    free(filter_sys);
}
