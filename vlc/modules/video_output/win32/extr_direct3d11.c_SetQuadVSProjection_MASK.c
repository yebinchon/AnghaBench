#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_9__ ;
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
struct TYPE_23__ {TYPE_6__* sys; } ;
typedef  TYPE_5__ vout_display_t ;
struct TYPE_22__ {int /*<<< orphan*/  d3dcontext; } ;
struct TYPE_19__ {float height; scalar_t__ width; } ;
struct TYPE_20__ {TYPE_1__ display; } ;
struct TYPE_21__ {TYPE_2__ vdcfg; } ;
struct TYPE_24__ {TYPE_4__ d3d_dev; TYPE_3__ area; } ;
typedef  TYPE_6__ vout_display_sys_t ;
struct TYPE_25__ {float fov; } ;
typedef  TYPE_7__ vlc_viewpoint_t ;
struct TYPE_26__ {scalar_t__ pVertexShaderConstants; } ;
typedef  TYPE_8__ d3d_quad_t ;
struct TYPE_27__ {int /*<<< orphan*/  View; int /*<<< orphan*/  Projection; int /*<<< orphan*/  Zoom; } ;
typedef  TYPE_9__ VS_PROJECTION_CONST ;
struct TYPE_18__ {TYPE_9__* pData; } ;
typedef  int /*<<< orphan*/  ID3D11Resource ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_10__ D3D11_MAPPED_SUBRESOURCE ;

/* Variables and functions */
 int /*<<< orphan*/  D3D11_MAP_WRITE_DISCARD ; 
 int FIELD_OF_VIEW_DEGREES_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int M_PI ; 
 float SPHERE_RADIUS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 float FUNC3 (float,float) ; 
 float FUNC4 (float,float) ; 
 int /*<<< orphan*/  FUNC5 (float,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,TYPE_7__ const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(vout_display_t *vd, d3d_quad_t *quad, const vlc_viewpoint_t *p_vp)
{
    vout_display_sys_t *sys = vd->sys;
    if (!quad->pVertexShaderConstants)
        return;

    // Convert degree into radian
    float f_fovx = p_vp->fov * (float)M_PI / 180.f;
    if ( f_fovx > FIELD_OF_VIEW_DEGREES_MAX * M_PI / 180 + 0.001f ||
         f_fovx < -0.001f )
        return;

    float f_sar = (float) sys->area.vdcfg.display.width / sys->area.vdcfg.display.height;
    float f_fovy = FUNC3(f_fovx, f_sar);
    float f_z = FUNC4(f_fovx, f_fovy);

    HRESULT hr;
    D3D11_MAPPED_SUBRESOURCE mapped;
    hr = FUNC0(sys->d3d_dev.d3dcontext, (ID3D11Resource *)quad->pVertexShaderConstants, 0, D3D11_MAP_WRITE_DISCARD, 0, &mapped);
    if (FUNC2(hr)) {
        VS_PROJECTION_CONST *dst_data = mapped.pData;
        FUNC6(SPHERE_RADIUS * f_z, dst_data->Zoom);
        FUNC5(f_sar, f_fovy, dst_data->Projection);

        vlc_viewpoint_t vp;
        FUNC7(&vp, p_vp);
        FUNC8(&vp, dst_data->View);
    }
    FUNC1(sys->d3d_dev.d3dcontext, (ID3D11Resource *)quad->pVertexShaderConstants, 0);
}