
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
struct TYPE_13__ {int hwnd; int hinstance; int sType; } ;
typedef TYPE_5__ VkWin32SurfaceCreateInfoKHR ;
typedef scalar_t__ VkResult ;
typedef int VkInstance ;
struct TYPE_10__ {int hwnd; } ;
struct TYPE_11__ {TYPE_2__ handle; } ;
struct TYPE_9__ {int instance; } ;
typedef int HWND ;
typedef int HINSTANCE ;


 int GetModuleHandle (int *) ;
 int VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR ;
 scalar_t__ VK_SUCCESS ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Err (TYPE_4__*,char*) ;
 scalar_t__ vkCreateWin32SurfaceKHR (int ,TYPE_5__*,int *,int *) ;

int vlc_vk_CreateSurface(vlc_vk_t *vk)
{
    VkInstance vkinst = vk->instance->instance;


    HINSTANCE hInst = GetModuleHandle(((void*)0));

    VkWin32SurfaceCreateInfoKHR winfo = {
         .sType = VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR,
         .hinstance = hInst,
         .hwnd = (HWND) vk->window->handle.hwnd,
    };

    VkResult res = vkCreateWin32SurfaceKHR(vkinst, &winfo, ((void*)0), &vk->surface);
    if (res != VK_SUCCESS) {
        msg_Err(vk, "Failed creating Win32 surface");
        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}
