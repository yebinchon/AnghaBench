
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_decoder_device ;
struct TYPE_4__ {TYPE_1__* instance; } ;
typedef TYPE_2__ picture_sys_t ;
typedef int VADisplay ;
struct TYPE_3__ {int dec_device; int va_dpy; } ;


 int assert (int ) ;
 int * vlc_decoder_device_Hold (int ) ;

vlc_decoder_device *
vlc_vaapi_PicSysHoldInstance(void *_sys, VADisplay *dpy)
{
    picture_sys_t *sys = (picture_sys_t *)_sys;
    assert(sys->instance != ((void*)0));
    *dpy = sys->instance->va_dpy;
    return vlc_decoder_device_Hold(sys->instance->dec_device);
}
