#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int num; int refs; int /*<<< orphan*/ * display; int /*<<< orphan*/  device; int /*<<< orphan*/  vdp; int /*<<< orphan*/ * name; int /*<<< orphan*/ * next; } ;
typedef  TYPE_1__ vdp_instance_t ;
typedef  scalar_t__ VdpStatus ;

/* Variables and functions */
 scalar_t__ VDP_STATUS_ERROR ; 
 scalar_t__ VDP_STATUS_OK ; 
 scalar_t__ VDP_STATUS_RESOURCES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static VdpStatus FUNC9(const char *name, int num,
                                     vdp_instance_t **pp)
{
    size_t namelen = (name != NULL) ? (FUNC6(name) + 1) : 0;
    vdp_instance_t *vi = FUNC4(sizeof (*vi) + namelen);

    if (FUNC7(vi == NULL))
        return VDP_STATUS_RESOURCES;

    vi->display = FUNC2(name);
    if (vi->display == NULL)
    {
        FUNC3(vi);
        return VDP_STATUS_ERROR;
    }

    vi->next = NULL;
    if (name != NULL)
    {
        vi->name = (void *)(vi + 1);
        FUNC5(vi->name, name, namelen);
    }
    else
        vi->name = NULL;
    if (num >= 0)
        vi->num = num;
    else
        vi->num = FUNC1(vi->display);
    vi->refs = 1;

    VdpStatus err = FUNC8(vi->display, vi->num,
                                   &vi->vdp, &vi->device);
    if (err != VDP_STATUS_OK)
    {
        FUNC0(vi->display);
        FUNC3(vi);
        return err;
    }
    *pp = vi;
    return VDP_STATUS_OK;
}