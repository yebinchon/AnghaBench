#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdp_t ;
struct TYPE_6__ {int /*<<< orphan*/  device; int /*<<< orphan*/ * vdp; struct TYPE_6__* next; } ;
typedef  TYPE_1__ vdp_instance_t ;
typedef  scalar_t__ VdpStatus ;
typedef  int /*<<< orphan*/  VdpDevice ;

/* Variables and functions */
 scalar_t__ VDP_STATUS_ERROR ; 
 scalar_t__ VDP_STATUS_OK ; 
 scalar_t__ VDP_STATUS_RESOURCES ; 
 char* FUNC0 (char*) ; 
 TYPE_1__* list ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,int,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (char const*,int) ; 

VdpStatus FUNC7(const char *display_name, int snum,
                      vdp_t **restrict vdpp, VdpDevice *restrict devicep)
{
    vdp_instance_t *vi, *vi2;
    VdpStatus err = VDP_STATUS_RESOURCES;

    if (display_name == NULL)
    {
        display_name = FUNC0("DISPLAY");
        if (display_name == NULL)
            return VDP_STATUS_ERROR;
    }

    FUNC1(&lock);
    vi = FUNC6(display_name, snum);
    FUNC2(&lock);
    if (vi != NULL)
        goto found;

    err = FUNC4(display_name, snum, &vi);
    if (err != VDP_STATUS_OK)
        return err;

    FUNC1(&lock);
    vi2 = FUNC6(display_name, snum);
    if (FUNC3(vi2 != NULL))
    {   /* Another thread created the instance (race condition corner case) */
        FUNC2(&lock);
        FUNC5(vi);
        vi = vi2;
    }
    else
    {
        vi->next = list;
        list = vi;
        FUNC2(&lock);
    }
found:
    *vdpp = vi->vdp;
    *devicep = vi->device;
    return VDP_STATUS_OK;
}