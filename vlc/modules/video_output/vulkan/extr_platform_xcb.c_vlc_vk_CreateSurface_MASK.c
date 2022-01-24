#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_window_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;
struct TYPE_12__ {int /*<<< orphan*/  surface; TYPE_3__* window; int /*<<< orphan*/ * platform_sys; TYPE_1__* instance; } ;
typedef  TYPE_4__ vlc_vk_t ;
struct TYPE_13__ {int /*<<< orphan*/ * connection; int /*<<< orphan*/  window; int /*<<< orphan*/  sType; } ;
typedef  TYPE_5__ VkXcbSurfaceCreateInfoKHR ;
typedef  scalar_t__ VkResult ;
typedef  int /*<<< orphan*/  VkInstance ;
struct TYPE_10__ {int /*<<< orphan*/  xid; } ;
struct TYPE_11__ {TYPE_2__ handle; } ;
struct TYPE_9__ {int /*<<< orphan*/  instance; } ;

/* Variables and functions */
 int /*<<< orphan*/  VK_STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR ; 
 scalar_t__ VK_SUCCESS ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC2(vlc_vk_t *vk)
{
    VkInstance vkinst = vk->instance->instance;
    xcb_connection_t *conn = vk->platform_sys;

    VkXcbSurfaceCreateInfoKHR xinfo = {
         .sType = VK_STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR,
         .window = (xcb_window_t) vk->window->handle.xid,
         .connection = conn,
    };

    VkResult res = FUNC1(vkinst, &xinfo, NULL, &vk->surface);
    if (res != VK_SUCCESS) {
        FUNC0(vk, "Failed creating XCB surface");
        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}