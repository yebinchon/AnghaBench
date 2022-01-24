#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vlc_vk_t {int /*<<< orphan*/  ref_count; int /*<<< orphan*/ * module; struct vout_window_t* window; scalar_t__ surface; int /*<<< orphan*/ * instance; int /*<<< orphan*/ * ctx; } ;
typedef  struct vlc_vk_t vlc_vk_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct vout_window_t {int dummy; } ;
typedef  scalar_t__ VkSurfaceKHR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct vlc_vk_t*,char*,char const*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vlc_vk_t* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vlc_vk_t*) ; 

vlc_vk_t *FUNC5(struct vout_window_t *wnd, const char *name)
{
    vlc_object_t *parent = (vlc_object_t *) wnd;
    struct vlc_vk_t *vk;

    vk = FUNC3(parent, sizeof (*vk));
    if (FUNC1(vk == NULL))
        return NULL;

    vk->ctx = NULL;
    vk->instance = NULL;
    vk->surface = (VkSurfaceKHR) NULL;

    vk->window = wnd;
    vk->module = FUNC0(vk, "vulkan", name, true);
    if (vk->module == NULL)
    {
        FUNC4(vk);
        return NULL;
    }
    FUNC2(&vk->ref_count);

    return vk;
}