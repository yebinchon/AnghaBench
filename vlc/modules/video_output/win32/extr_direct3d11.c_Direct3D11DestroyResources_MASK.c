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
struct TYPE_6__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ vout_display_t ;
struct TYPE_7__ {int /*<<< orphan*/ * prepareWait; int /*<<< orphan*/  regionQuad; int /*<<< orphan*/  projectionVShader; int /*<<< orphan*/  flatVShader; int /*<<< orphan*/  stagingSys; scalar_t__ d3dregion_count; int /*<<< orphan*/  d3dregions; int /*<<< orphan*/  picQuad; } ;
typedef  TYPE_2__ vout_display_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 

__attribute__((used)) static void FUNC8(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;

    FUNC4(vd);

    FUNC1(&sys->picQuad);
    FUNC3(sys->d3dregion_count, sys->d3dregions);
    sys->d3dregion_count = 0;

    FUNC6(&sys->stagingSys);

    FUNC2(&sys->flatVShader);
    FUNC2(&sys->projectionVShader);

    FUNC0(&sys->regionQuad);
    if (sys->prepareWait)
    {
        FUNC5(sys->prepareWait);
        sys->prepareWait = NULL;
    }

    FUNC7(vd, "Direct3D11 resources destroyed");
}