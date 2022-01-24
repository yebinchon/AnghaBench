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
typedef  int /*<<< orphan*/  vout_thread_t ;
struct TYPE_3__ {scalar_t__ i_vout; int /*<<< orphan*/  lock_hold; int /*<<< orphan*/ ** pp_vout; int /*<<< orphan*/  p_parent; int /*<<< orphan*/ * p_vout_free; } ;
typedef  TYPE_1__ input_resource_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(input_resource_t *p_resource,
                                         vout_thread_t *vout)
{
    FUNC2(vout != NULL);
    FUNC4(&p_resource->lock_hold);
    FUNC2( p_resource->i_vout > 0 );

    if (p_resource->pp_vout[0] == vout)
    {
        FUNC5(&p_resource->lock_hold);

        FUNC2(p_resource->p_vout_free == NULL || p_resource->p_vout_free == vout);
        FUNC3(p_resource->p_parent, "saving a free vout");
        p_resource->p_vout_free = vout;
    }
    else
    {
        FUNC3(p_resource->p_parent, "destroying vout (already one saved or active)");
#ifndef NDEBUG
        {
            int index;
            FUNC0(p_resource->i_vout, p_resource->pp_vout, vout, index);
            FUNC2(index >= 0);
        }
#endif

        FUNC1(p_resource->i_vout, p_resource->pp_vout, vout);
        FUNC5(&p_resource->lock_hold);
        FUNC6(vout);
    }
}