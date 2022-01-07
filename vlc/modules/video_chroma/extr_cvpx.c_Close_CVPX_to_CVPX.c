
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_5__ {int pool; int vttransfer; } ;
typedef TYPE_2__ filter_sys_t ;


 int CFRelease (int ) ;
 int CVPixelBufferPoolRelease (int ) ;
 int VTPixelTransferSessionInvalidate (int ) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static void
Close_CVPX_to_CVPX(vlc_object_t *obj)
{
    filter_t *filter = (filter_t *)obj;
    filter_sys_t *p_sys = filter->p_sys;

    VTPixelTransferSessionInvalidate(p_sys->vttransfer);
    CFRelease(p_sys->vttransfer);
    CVPixelBufferPoolRelease(p_sys->pool);
    free(filter->p_sys);
}
