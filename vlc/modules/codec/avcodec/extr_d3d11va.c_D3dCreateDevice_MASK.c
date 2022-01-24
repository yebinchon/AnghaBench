#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_4__* sys; } ;
typedef  TYPE_3__ vlc_va_t ;
struct TYPE_8__ {void* video_context; } ;
struct TYPE_7__ {scalar_t__ d3ddevice; scalar_t__ d3dcontext; } ;
struct TYPE_10__ {void* d3ddec; TYPE_2__ hw; TYPE_1__ d3d_dev; } ;
typedef  TYPE_4__ vlc_va_sys_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  IID_ID3D11VideoContext ; 
 int /*<<< orphan*/  IID_ID3D11VideoDevice ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(vlc_va_t *va)
{
    vlc_va_sys_t *sys = va->sys;
    HRESULT hr;

    FUNC6(sys->d3d_dev.d3ddevice && sys->d3d_dev.d3dcontext);
    void *d3dvidctx = NULL;
    hr = FUNC1(sys->d3d_dev.d3dcontext, &IID_ID3D11VideoContext, &d3dvidctx);
    if (FUNC0(hr)) {
       FUNC7(va, "Could not Query ID3D11VideoContext Interface. (hr=0x%lX)", hr);
       FUNC2(sys->d3d_dev.d3dcontext);
       FUNC4(sys->d3d_dev.d3ddevice);
       return VLC_EGENERIC;
    }
    sys->hw.video_context = d3dvidctx;

    void *d3dviddev = NULL;
    hr = FUNC3(sys->d3d_dev.d3ddevice, &IID_ID3D11VideoDevice, &d3dviddev);
    if (FUNC0(hr)) {
       FUNC7(va, "Could not Query ID3D11VideoDevice Interface. (hr=0x%lX)", hr);
       FUNC2(sys->d3d_dev.d3dcontext);
       FUNC4(sys->d3d_dev.d3ddevice);
       FUNC5(sys->hw.video_context);
       return VLC_EGENERIC;
    }
    sys->d3ddec = d3dviddev;

    return VLC_SUCCESS;
}