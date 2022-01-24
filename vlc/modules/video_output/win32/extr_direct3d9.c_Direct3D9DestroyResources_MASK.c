#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* sys; } ;
typedef  TYPE_2__ vout_display_t ;
struct TYPE_6__ {int /*<<< orphan*/ * pool; int /*<<< orphan*/ * dx_render; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(vout_display_t *vd)
{
    FUNC0(vd);
    if (vd->sys->dx_render)
    {
        FUNC2(vd->sys->dx_render);
        vd->sys->dx_render = NULL;
    }
    if (vd->sys->pool)
    {
        FUNC3(vd->sys->pool);
        vd->sys->pool = NULL;
    }
    FUNC1(vd);
}