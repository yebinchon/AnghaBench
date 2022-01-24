#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_3__* sys; } ;
typedef  TYPE_2__ vout_display_t ;
struct TYPE_8__ {int num_overlays; TYPE_4__* vk; int /*<<< orphan*/  renderer; int /*<<< orphan*/ * overlay_tex; int /*<<< orphan*/ * overlays; int /*<<< orphan*/ * plane_tex; } ;
typedef  TYPE_3__ vout_display_sys_t ;
struct pl_gpu {int dummy; } ;
struct TYPE_9__ {TYPE_1__* vulkan; } ;
struct TYPE_6__ {struct pl_gpu* gpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pl_gpu const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC4(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;
    const struct pl_gpu *gpu = sys->vk->vulkan->gpu;

    for (int i = 0; i < 4; i++)
        FUNC2(gpu, &sys->plane_tex[i]);
    for (int i = 0; i < sys->num_overlays; i++)
        FUNC2(gpu, &sys->overlay_tex[i]);

    if (sys->overlays) {
        FUNC0(sys->overlays);
        FUNC0(sys->overlay_tex);
    }

    FUNC1(&sys->renderer);

    FUNC3(sys->vk);
}