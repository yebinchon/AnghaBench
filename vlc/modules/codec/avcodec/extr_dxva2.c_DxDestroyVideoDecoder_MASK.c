#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int surface_count; scalar_t__ decoder; } ;
struct TYPE_5__ {scalar_t__ dxva2_dll; int /*<<< orphan*/  hd3d; int /*<<< orphan*/  d3d_dev; int /*<<< orphan*/  devmng; int /*<<< orphan*/  d3ddec; int /*<<< orphan*/  device; scalar_t__* hw_surface; TYPE_1__ hw; } ;
typedef  TYPE_2__ vlc_va_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC9(void *opaque)
{
    vlc_va_sys_t *sys = opaque;
    /* releases a reference on each decoder surface */
    if (sys->hw.decoder)
        FUNC7(sys->hw.decoder);
    if (sys->hw_surface[0])
    {
        for (unsigned i = 0; i < sys->hw.surface_count; i++)
            FUNC5(sys->hw_surface[i]);
    }
    FUNC3(sys->devmng, sys->device);
    FUNC6(sys->d3ddec);
    FUNC4(sys->devmng);
    FUNC1(&sys->d3d_dev);
    FUNC0( &sys->hd3d );
    if (sys->dxva2_dll)
        FUNC2(sys->dxva2_dll);

    FUNC8(sys);
}