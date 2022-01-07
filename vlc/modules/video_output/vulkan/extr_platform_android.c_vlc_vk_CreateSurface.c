
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int surface; TYPE_3__* window; TYPE_1__* instance; } ;
typedef TYPE_4__ vlc_vk_t ;
typedef scalar_t__ VkResult ;
typedef int VkInstance ;
struct TYPE_13__ {int * window; int flags; int * pNext; int sType; } ;
typedef TYPE_5__ VkAndroidSurfaceCreateInfoKHR ;
struct TYPE_10__ {int anativewindow; } ;
struct TYPE_11__ {TYPE_2__ handle; } ;
struct TYPE_9__ {int instance; } ;
typedef int ANativeWindow ;


 int * AWindowHandler_getANativeWindow (int ,int ) ;
 int AWindow_Video ;
 int VK_STRUCTURE_TYPE_ANDROID_SURFACE_CREATE_INFO_KHR ;
 scalar_t__ VK_SUCCESS ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Err (TYPE_4__*,char*) ;
 scalar_t__ vkCreateAndroidSurfaceKHR (int ,TYPE_5__*,int *,int *) ;

int vlc_vk_CreateSurface(vlc_vk_t *vk)
{
    VkInstance vkinst = vk->instance->instance;

    ANativeWindow *anw =
        AWindowHandler_getANativeWindow(vk->window->handle.anativewindow,
                                        AWindow_Video);

    VkAndroidSurfaceCreateInfoKHR ainfo = {
         .sType = VK_STRUCTURE_TYPE_ANDROID_SURFACE_CREATE_INFO_KHR,
         .pNext = ((void*)0),
         .flags = 0,
         .window = anw,
    };

    VkResult res = vkCreateAndroidSurfaceKHR(vkinst, &ainfo, ((void*)0), &vk->surface);
    if (res != VK_SUCCESS) {
        msg_Err(vk, "Failed creating Android surface");
        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}
