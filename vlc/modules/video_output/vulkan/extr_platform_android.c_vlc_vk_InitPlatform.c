
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* window; } ;
typedef TYPE_2__ vlc_vk_t ;
struct TYPE_4__ {scalar_t__ type; } ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ VOUT_WINDOW_TYPE_ANDROID_NATIVE ;

int vlc_vk_InitPlatform(vlc_vk_t *vk)
{
    if (vk->window->type != VOUT_WINDOW_TYPE_ANDROID_NATIVE)
        return VLC_EGENERIC;

    return VLC_SUCCESS;
}
