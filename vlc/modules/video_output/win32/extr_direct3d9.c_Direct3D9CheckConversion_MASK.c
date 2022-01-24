#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_3__* sys; } ;
typedef  TYPE_2__ vout_display_t ;
struct TYPE_6__ {int /*<<< orphan*/ * obj; } ;
struct TYPE_8__ {TYPE_1__ hd3d; } ;
typedef  TYPE_3__ vout_display_sys_t ;
typedef  int /*<<< orphan*/  IDirect3D9 ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  D3DFORMAT ;

/* Variables and functions */
 int /*<<< orphan*/  D3DADAPTER_DEFAULT ; 
 int /*<<< orphan*/  D3DDEVTYPE_HAL ; 
 scalar_t__ D3DERR_NOTAVAILABLE ; 
 int /*<<< orphan*/  D3DRTYPE_SURFACE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(vout_display_t *vd,
                                   D3DFORMAT src, D3DFORMAT dst)
{
    vout_display_sys_t *sys = vd->sys;
    IDirect3D9 *d3dobj = sys->hd3d.obj;
    HRESULT hr;

    /* test whether device can create a surface of that format */
    hr = FUNC0(d3dobj, D3DADAPTER_DEFAULT,
                                      D3DDEVTYPE_HAL, dst, 0,
                                      D3DRTYPE_SURFACE, src);
    if (FUNC2(hr)) {
        /* test whether device can perform color-conversion
        ** from that format to target format
        */
        hr = FUNC1(d3dobj,
                                                    D3DADAPTER_DEFAULT,
                                                    D3DDEVTYPE_HAL,
                                                    src, dst);
    }
    if (!FUNC2(hr)) {
        if (D3DERR_NOTAVAILABLE != hr)
            FUNC3(vd, "Could not query adapter supported formats. (hr=0x%lX)", hr);
        return VLC_EGENERIC;
    }
    return VLC_SUCCESS;
}