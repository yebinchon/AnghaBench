
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int xcb_window_t ;
typedef int xcb_connection_t ;
struct TYPE_12__ {int surface; TYPE_3__* window; int * platform_sys; TYPE_1__* instance; } ;
typedef TYPE_4__ vlc_vk_t ;
struct TYPE_13__ {int * connection; int window; int sType; } ;
typedef TYPE_5__ VkXcbSurfaceCreateInfoKHR ;
typedef scalar_t__ VkResult ;
typedef int VkInstance ;
struct TYPE_10__ {int xid; } ;
struct TYPE_11__ {TYPE_2__ handle; } ;
struct TYPE_9__ {int instance; } ;


 int VK_STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR ;
 scalar_t__ VK_SUCCESS ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Err (TYPE_4__*,char*) ;
 scalar_t__ vkCreateXcbSurfaceKHR (int ,TYPE_5__*,int *,int *) ;

int vlc_vk_CreateSurface(vlc_vk_t *vk)
{
    VkInstance vkinst = vk->instance->instance;
    xcb_connection_t *conn = vk->platform_sys;

    VkXcbSurfaceCreateInfoKHR xinfo = {
         .sType = VK_STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR,
         .window = (xcb_window_t) vk->window->handle.xid,
         .connection = conn,
    };

    VkResult res = vkCreateXcbSurfaceKHR(vkinst, &xinfo, ((void*)0), &vk->surface);
    if (res != VK_SUCCESS) {
        msg_Err(vk, "Failed creating XCB surface");
        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}
