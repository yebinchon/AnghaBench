#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ vout_display_t ;
struct TYPE_15__ {scalar_t__ use_ex; } ;
struct TYPE_18__ {int /*<<< orphan*/  BufferFormat; int /*<<< orphan*/  dev; int /*<<< orphan*/  devex; } ;
struct TYPE_17__ {TYPE_12__ hd3d; TYPE_3__ d3d_dev; } ;
typedef  TYPE_2__ vout_display_sys_t ;
typedef  int /*<<< orphan*/  video_format_t ;
typedef  TYPE_3__ d3d9_device_t ;
struct TYPE_19__ {int /*<<< orphan*/  BackBufferFormat; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_4__ D3DPRESENT_PARAMETERS ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_12__*,TYPE_3__*,TYPE_4__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,...) ; 

__attribute__((used)) static int FUNC8(vout_display_t *vd, const video_format_t *fmtp)
{
    vout_display_sys_t *sys = vd->sys;
    d3d9_device_t *p_d3d9_dev = &sys->d3d_dev;

    D3DPRESENT_PARAMETERS d3dpp;
    if (FUNC0(&sys->hd3d, p_d3d9_dev, &d3dpp))
    {
        FUNC7(vd, "Could not presentation parameters to reset device");
        return VLC_EGENERIC;
    }

    /* release all D3D objects */
    FUNC2(vd);

    /* */
    HRESULT hr;
    if (sys->hd3d.use_ex){
        hr = FUNC4(p_d3d9_dev->devex, &d3dpp, NULL);
    } else {
        hr = FUNC5(p_d3d9_dev->dev, &d3dpp);
    }
    if (FUNC3(hr)) {
        FUNC7(vd, "IDirect3DDevice9_Reset failed! (hr=0x%lX)", hr);
        return VLC_EGENERIC;
    }
    p_d3d9_dev->BufferFormat = d3dpp.BackBufferFormat;

    /* re-create them */
    if (FUNC1(vd, fmtp)) {
        FUNC6(vd, "Direct3D9CreateResources failed !");
        return VLC_EGENERIC;
    }
    return VLC_SUCCESS;
}