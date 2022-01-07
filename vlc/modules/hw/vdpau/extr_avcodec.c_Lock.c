
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* frame; int context; } ;
typedef TYPE_2__ vlc_vdp_video_field_t ;
struct TYPE_10__ {int * sys; } ;
typedef TYPE_3__ vlc_va_t ;
typedef int vlc_va_sys_t ;
typedef int uint8_t ;
struct TYPE_11__ {int * context; } ;
typedef TYPE_4__ picture_t ;
struct TYPE_8__ {scalar_t__ surface; } ;


 TYPE_2__* Get (int *) ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;

__attribute__((used)) static int Lock(vlc_va_t *va, picture_t *pic, uint8_t **data)
{
    vlc_va_sys_t *sys = va->sys;
    vlc_vdp_video_field_t *field = Get(sys);
    if (field == ((void*)0))
        return VLC_ENOMEM;

    pic->context = &field->context;
    *data = (void *)(uintptr_t)field->frame->surface;
    return VLC_SUCCESS;
}
