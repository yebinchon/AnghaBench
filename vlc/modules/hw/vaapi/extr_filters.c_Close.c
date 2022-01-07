
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int filter_t ;
struct TYPE_5__ {int dec_device; int conf; int dpy; int ctx; int buf; } ;
struct TYPE_6__ {TYPE_1__ va; int dest_pics; } ;
typedef TYPE_2__ filter_sys_t ;


 int * VLC_OBJECT (int *) ;
 int free (TYPE_2__*) ;
 int picture_pool_Release (int ) ;
 int vlc_vaapi_DestroyBuffer (int *,int ,int ) ;
 int vlc_vaapi_DestroyConfig (int *,int ,int ) ;
 int vlc_vaapi_DestroyContext (int *,int ,int ) ;
 int vlc_vaapi_FilterReleaseInstance (int *,int ) ;

__attribute__((used)) static void
Close(filter_t *filter, filter_sys_t * filter_sys)
{
    vlc_object_t * obj = VLC_OBJECT(filter);
    picture_pool_Release(filter_sys->dest_pics);
    vlc_vaapi_DestroyBuffer(obj, filter_sys->va.dpy, filter_sys->va.buf);
    vlc_vaapi_DestroyContext(obj, filter_sys->va.dpy, filter_sys->va.ctx);
    vlc_vaapi_DestroyConfig(obj, filter_sys->va.dpy, filter_sys->va.conf);
    vlc_vaapi_FilterReleaseInstance(filter, filter_sys->va.dec_device);
    free(filter_sys);
}
