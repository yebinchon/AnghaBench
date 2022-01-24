#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdp_t ;
struct TYPE_4__ {scalar_t__ refs; struct TYPE_4__* next; int /*<<< orphan*/ * vdp; } ;
typedef  TYPE_1__ vdp_instance_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* list ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(vdp_t *vdp)
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

    FUNC0(vi->refs > 0);
    vi->refs--;
    if (vi->refs > 0)
        vi = NULL; /* Keep the instance for now */
    else
        *pp = vi->next; /* Unlink the instance */
    FUNC2(&lock);

    if (vi != NULL)
        FUNC3(vi);
}