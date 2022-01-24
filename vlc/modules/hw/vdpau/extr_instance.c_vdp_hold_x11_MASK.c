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
typedef  int /*<<< orphan*/  vdp_t ;
struct TYPE_3__ {scalar_t__ refs; int /*<<< orphan*/  device; struct TYPE_3__* next; int /*<<< orphan*/ * vdp; } ;
typedef  TYPE_1__ vdp_instance_t ;
typedef  int /*<<< orphan*/  VdpDevice ;

/* Variables and functions */
 scalar_t__ UINTPTR_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* list ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

vdp_t *FUNC3(vdp_t *vdp, VdpDevice *restrict devp)
{
    vdp_instance_t *vi, **pp = &list;

    FUNC1(&lock);
    for (;;)
    {
        vi = *pp;
        FUNC0(vi != NULL);
        if (vi->vdp == vdp)
            break;
        pp = &vi->next;
    }

    FUNC0(vi->refs < UINTPTR_MAX);
    vi->refs++;
    FUNC2(&lock);

    if (devp != NULL)
        *devp = vi->device;
   return vdp;
}