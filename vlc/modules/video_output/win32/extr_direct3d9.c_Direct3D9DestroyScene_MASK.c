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
struct TYPE_6__ {int /*<<< orphan*/ * d3dregion; scalar_t__ d3dregion_count; int /*<<< orphan*/ * sceneTexture; int /*<<< orphan*/ * sceneVertexBuffer; } ;
typedef  TYPE_2__ vout_display_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 

__attribute__((used)) static void FUNC4(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;

    FUNC0(sys->d3dregion_count, sys->d3dregion);

    if (sys->sceneVertexBuffer)
    {
        FUNC2(sys->sceneVertexBuffer);
        sys->sceneVertexBuffer = NULL;
    }

    if (sys->sceneTexture)
    {
        FUNC1(sys->sceneTexture);
        sys->sceneTexture = NULL;
    }

    sys->d3dregion_count = 0;
    sys->d3dregion       = NULL;

    FUNC3(vd, "Direct3D9 scene released successfully");
}