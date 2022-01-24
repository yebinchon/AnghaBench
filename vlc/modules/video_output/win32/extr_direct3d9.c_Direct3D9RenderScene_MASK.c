#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_3__* sys; } ;
typedef  TYPE_2__ vout_display_t ;
struct TYPE_11__ {int /*<<< orphan*/ * dev; } ;
struct TYPE_13__ {int clear_scene; int /*<<< orphan*/  outside_opaque; int /*<<< orphan*/  (* startEndRenderingCb ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ;TYPE_1__ d3d_dev; } ;
typedef  TYPE_3__ vout_display_sys_t ;
struct TYPE_14__ {scalar_t__ texture; } ;
typedef  TYPE_4__ d3d_region_t ;
typedef  int /*<<< orphan*/  IDirect3DDevice9 ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  D3DCLEAR_TARGET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  D3DRS_ALPHABLENDENABLE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_4__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(vout_display_t *vd,
                                d3d_region_t *picture,
                                size_t subpicture_count,
                                d3d_region_t *subpicture)
{
    vout_display_sys_t *sys = vd->sys;
    IDirect3DDevice9 *d3ddev = sys->d3d_dev.dev;
    HRESULT hr;

    if (sys->startEndRenderingCb && !sys->startEndRenderingCb( sys->outside_opaque, true, NULL ))
        return;

    if (sys->clear_scene) {
        /* Clear the backbuffer and the zbuffer */
        hr = FUNC4(d3ddev, 0, NULL, D3DCLEAR_TARGET,
                                  FUNC0(0, 0, 0), 1.0f, 0);
        if (FUNC2(hr)) {
            FUNC7(vd, "Failed Clear: 0x%lX", hr);
            return;
        }
        sys->clear_scene = false;
    }

    hr = FUNC3(d3ddev);
    if (FUNC2(hr)) {
        FUNC7(vd, "Failed BeginScene: 0x%lX", hr);
        return;
    }

    FUNC1(vd, picture, true);

    if (subpicture_count)
    {
        FUNC6(d3ddev, D3DRS_ALPHABLENDENABLE, TRUE);
        for (size_t i = 0; i < subpicture_count; i++) {
            d3d_region_t *r = &subpicture[i];
            if (r->texture)
                FUNC1(vd, r, false);
        }
        FUNC6(d3ddev, D3DRS_ALPHABLENDENABLE, FALSE);
    }

    hr = FUNC5(d3ddev);
    if (FUNC2(hr))
        FUNC7(vd, "Failed EndScene: 0x%lX", hr);

    if (sys->startEndRenderingCb)
        sys->startEndRenderingCb( sys->outside_opaque, false, NULL );
}