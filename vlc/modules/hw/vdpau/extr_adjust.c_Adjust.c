
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {void* hue; void* saturation; void* contrast; void* brightness; } ;
struct TYPE_10__ {TYPE_1__ procamp; } ;
typedef TYPE_2__ vlc_vdp_video_field_t ;
struct TYPE_11__ {scalar_t__ context; } ;
typedef TYPE_3__ picture_t ;
struct TYPE_12__ {TYPE_5__* p_sys; } ;
typedef TYPE_4__ filter_t ;
struct TYPE_13__ {int hue; int saturation; int contrast; int brightness; } ;
typedef TYPE_5__ filter_sys_t ;


 scalar_t__ unlikely (int ) ;
 void* vlc_atomic_load_float (int *) ;

__attribute__((used)) static picture_t *Adjust(filter_t *filter, picture_t *pic)
{
    filter_sys_t *sys = filter->p_sys;
    vlc_vdp_video_field_t *f = (vlc_vdp_video_field_t *)pic->context;

    if (unlikely(f == ((void*)0)))
        return pic;

    f->procamp.brightness = vlc_atomic_load_float(&sys->brightness);
    f->procamp.contrast = vlc_atomic_load_float(&sys->contrast);
    f->procamp.saturation = vlc_atomic_load_float(&sys->saturation);
    f->procamp.hue = vlc_atomic_load_float(&sys->hue);

    return pic;
}
