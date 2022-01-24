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
struct TYPE_5__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ vout_display_t ;
struct TYPE_6__ {int /*<<< orphan*/  conn; int /*<<< orphan*/  vdp; int /*<<< orphan*/ * current; int /*<<< orphan*/  target; int /*<<< orphan*/  queue; } ;
typedef  TYPE_2__ vout_display_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;

    FUNC2(sys->vdp, sys->queue);
    FUNC3(sys->vdp, sys->target);

    if (sys->current != NULL)
        FUNC1(sys->current);

    FUNC4(sys->vdp);
    FUNC5(sys->conn);
    FUNC0(sys);
}