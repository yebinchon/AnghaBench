
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int format; } ;
typedef TYPE_1__ vlc_vdp_yuv_getter_t ;
struct TYPE_17__ {int * context; } ;
typedef TYPE_2__ picture_t ;
struct TYPE_18__ {TYPE_1__* p_sys; } ;
typedef TYPE_3__ filter_t ;


 TYPE_2__* VideoExport (TYPE_3__*,TYPE_2__*,TYPE_2__*,int ) ;
 TYPE_2__* filter_NewPicture (TYPE_3__*) ;
 int msg_Err (TYPE_3__*,char*,TYPE_2__*) ;
 int picture_Release (TYPE_2__*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static picture_t *VideoExport_Filter(filter_t *filter, picture_t *src)
{
    vlc_vdp_yuv_getter_t *sys = filter->p_sys;

    if (unlikely(src->context == ((void*)0)))
    {
        msg_Err(filter, "corrupt VDPAU video surface %p", src);
        picture_Release(src);
        return ((void*)0);
    }

    picture_t *dst = filter_NewPicture(filter);
    if (dst == ((void*)0))
        return ((void*)0);

    return VideoExport(filter, src, dst, sys->format);
}
