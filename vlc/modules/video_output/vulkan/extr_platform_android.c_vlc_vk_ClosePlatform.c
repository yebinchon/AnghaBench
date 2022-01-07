
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* window; } ;
typedef TYPE_3__ vlc_vk_t ;
struct TYPE_5__ {int anativewindow; } ;
struct TYPE_6__ {TYPE_1__ handle; } ;


 int AWindowHandler_releaseANativeWindow (int ,int ) ;
 int AWindow_Video ;

void vlc_vk_ClosePlatform(vlc_vk_t *vk)
{
    AWindowHandler_releaseANativeWindow(vk->window->handle.anativewindow,
                                        AWindow_Video);
}
