#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_5__* sys; } ;
typedef  TYPE_4__ vout_display_t ;
struct TYPE_15__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  BufferFormat; } ;
struct TYPE_14__ {int /*<<< orphan*/  obj; } ;
struct TYPE_18__ {int /*<<< orphan*/  dx_render; TYPE_3__* sw_texture_fmt; TYPE_2__ d3d_dev; int /*<<< orphan*/  d3dregion_format; TYPE_1__ hd3d; } ;
typedef  TYPE_5__ vout_display_sys_t ;
struct TYPE_19__ {int /*<<< orphan*/  i_height; int /*<<< orphan*/  i_width; int /*<<< orphan*/  i_chroma; } ;
typedef  TYPE_6__ video_format_t ;
struct TYPE_16__ {int /*<<< orphan*/  format; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  D3DFORMAT ;

/* Variables and functions */
 int /*<<< orphan*/  D3DADAPTER_DEFAULT ; 
 int /*<<< orphan*/  D3DDEVTYPE_HAL ; 
 int /*<<< orphan*/  D3DFMT_A8B8G8R8 ; 
 int /*<<< orphan*/  D3DFMT_A8R8G8B8 ; 
 int /*<<< orphan*/  D3DFMT_UNKNOWN ; 
 int /*<<< orphan*/  D3DPOOL_DEFAULT ; 
 int /*<<< orphan*/  D3DRTYPE_TEXTURE ; 
 int /*<<< orphan*/  D3DUSAGE_DYNAMIC ; 
 scalar_t__ FUNC0 (TYPE_4__*,TYPE_6__ const*) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,char*) ; 

__attribute__((used)) static int FUNC9(vout_display_t *vd, const video_format_t *fmt)
{
    vout_display_sys_t *sys = vd->sys;

    if (FUNC0(vd, fmt)) {
        FUNC7(vd, "Direct3D scene initialization failed !");
        return VLC_EGENERIC;
    }
    if (FUNC1(vd)) {
        /* Failing to initialize shaders is not fatal. */
        FUNC8(vd, "Direct3D shaders initialization failed !");
    }

    sys->d3dregion_format = D3DFMT_UNKNOWN;
    for (int i = 0; i < 2; i++) {
        D3DFORMAT dfmt = i == 0 ? D3DFMT_A8B8G8R8 : D3DFMT_A8R8G8B8;
        if (FUNC5(FUNC3(sys->hd3d.obj,
                                                   D3DADAPTER_DEFAULT,
                                                   D3DDEVTYPE_HAL,
                                                   sys->d3d_dev.BufferFormat,
                                                   D3DUSAGE_DYNAMIC,
                                                   D3DRTYPE_TEXTURE,
                                                   dfmt))) {
            sys->d3dregion_format = dfmt;
            break;
        }
    }

    if( !FUNC6( fmt->i_chroma ) )
    {
        HRESULT hr = FUNC4(sys->d3d_dev.dev,
                                                          fmt->i_width,
                                                          fmt->i_height,
                                                          sys->sw_texture_fmt->format,
                                                          D3DPOOL_DEFAULT,
                                                          &sys->dx_render,
                                                          NULL);
        if (FUNC2(hr)) {
           FUNC7(vd, "Failed to allocate offscreen surface (hr=0x%lX)", hr);
           return VLC_EGENERIC;
        }
    }

    return VLC_SUCCESS;
}