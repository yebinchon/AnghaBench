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
struct pic_sys_vaapi_instance {int /*<<< orphan*/  dec_device; int /*<<< orphan*/  num_render_targets; int /*<<< orphan*/  render_targets; int /*<<< orphan*/  va_dpy; int /*<<< orphan*/  pic_refcount; struct pic_sys_vaapi_instance* instance; } ;
struct TYPE_3__ {struct pic_sys_vaapi_instance* p_sys; } ;
typedef  TYPE_1__ picture_t ;
typedef  struct pic_sys_vaapi_instance picture_sys_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pic_sys_vaapi_instance*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(picture_t *pic)
{
    picture_sys_t *p_sys = pic->p_sys;
    struct pic_sys_vaapi_instance *instance = p_sys->instance;

    if (FUNC0(&instance->pic_refcount, 1) == 1)
    {
        FUNC2(instance->va_dpy, instance->render_targets,
                          instance->num_render_targets);
        FUNC3(instance->dec_device);
        FUNC1(instance);
    }
    FUNC1(pic->p_sys);
}