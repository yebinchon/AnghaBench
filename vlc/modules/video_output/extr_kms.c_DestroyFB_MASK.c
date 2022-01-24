#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  drm_fd; int /*<<< orphan*/ * fb; int /*<<< orphan*/  size; int /*<<< orphan*/ * map; int /*<<< orphan*/ * handle; } ;
typedef  TYPE_1__ vout_display_sys_t ;
typedef  size_t uint32_t ;
struct drm_mode_destroy_dumb {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_IOCTL_MODE_DESTROY_DUMB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_mode_destroy_dumb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(vout_display_sys_t const *sys, uint32_t const buf)
{
    struct drm_mode_destroy_dumb destroy_req = { .handle = sys->handle[buf] };

    FUNC2(sys->map[buf], sys->size);
    FUNC1(sys->drm_fd, sys->fb[buf]);
    FUNC0(sys->drm_fd, DRM_IOCTL_MODE_DESTROY_DUMB, &destroy_req);
}