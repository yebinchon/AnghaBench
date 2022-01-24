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
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_6__ {int /*<<< orphan*/  cache; int /*<<< orphan*/ * dec_device; scalar_t__ dest_pics; } ;
typedef  TYPE_2__ filter_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__* const) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void
FUNC4(vlc_object_t *obj)
{
    filter_t *filter = (filter_t *)obj;
    filter_sys_t *const filter_sys = filter->p_sys;

    if (filter_sys->dest_pics)
        FUNC2(filter_sys->dest_pics);
    if (filter_sys->dec_device != NULL)
        FUNC3(filter, filter_sys->dec_device);
    FUNC0(&filter_sys->cache);

    FUNC1(filter_sys);
}