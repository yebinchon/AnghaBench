#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  filter_t ;
struct TYPE_5__ {int /*<<< orphan*/  dec_device; int /*<<< orphan*/  conf; int /*<<< orphan*/  dpy; int /*<<< orphan*/  ctx; int /*<<< orphan*/  buf; } ;
struct TYPE_6__ {TYPE_1__ va; int /*<<< orphan*/  dest_pics; } ;
typedef  TYPE_2__ filter_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(filter_t *filter, filter_sys_t * filter_sys)
{
    vlc_object_t * obj = FUNC0(filter);
    FUNC2(filter_sys->dest_pics);
    FUNC3(obj, filter_sys->va.dpy, filter_sys->va.buf);
    FUNC5(obj, filter_sys->va.dpy, filter_sys->va.ctx);
    FUNC4(obj, filter_sys->va.dpy, filter_sys->va.conf);
    FUNC6(filter, filter_sys->va.dec_device);
    FUNC1(filter_sys);
}