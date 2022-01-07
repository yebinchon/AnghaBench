
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {TYPE_3__* sys; } ;
typedef TYPE_2__ vout_display_t ;
struct TYPE_11__ {int * dev; } ;
struct TYPE_13__ {int clear_scene; int outside_opaque; int (* startEndRenderingCb ) (int ,int,int *) ;TYPE_1__ d3d_dev; } ;
typedef TYPE_3__ vout_display_sys_t ;
struct TYPE_14__ {scalar_t__ texture; } ;
typedef TYPE_4__ d3d_region_t ;
typedef int IDirect3DDevice9 ;
typedef int HRESULT ;


 int D3DCLEAR_TARGET ;
 int D3DCOLOR_XRGB (int ,int ,int ) ;
 int D3DRS_ALPHABLENDENABLE ;
 int Direct3D9RenderRegion (TYPE_2__*,TYPE_4__*,int) ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int IDirect3DDevice9_BeginScene (int *) ;
 int IDirect3DDevice9_Clear (int *,int ,int *,int ,int ,float,int ) ;
 int IDirect3DDevice9_EndScene (int *) ;
 int IDirect3DDevice9_SetRenderState (int *,int ,int ) ;
 int TRUE ;
 int msg_Dbg (TYPE_2__*,char*,int ) ;
 int stub1 (int ,int,int *) ;
 int stub2 (int ,int,int *) ;

__attribute__((used)) static void Direct3D9RenderScene(vout_display_t *vd,
                                d3d_region_t *picture,
                                size_t subpicture_count,
                                d3d_region_t *subpicture)
{
    vout_display_sys_t *sys = vd->sys;
    IDirect3DDevice9 *d3ddev = sys->d3d_dev.dev;
    HRESULT hr;

    if (sys->startEndRenderingCb && !sys->startEndRenderingCb( sys->outside_opaque, 1, ((void*)0) ))
        return;

    if (sys->clear_scene) {

        hr = IDirect3DDevice9_Clear(d3ddev, 0, ((void*)0), D3DCLEAR_TARGET,
                                  D3DCOLOR_XRGB(0, 0, 0), 1.0f, 0);
        if (FAILED(hr)) {
            msg_Dbg(vd, "Failed Clear: 0x%lX", hr);
            return;
        }
        sys->clear_scene = 0;
    }

    hr = IDirect3DDevice9_BeginScene(d3ddev);
    if (FAILED(hr)) {
        msg_Dbg(vd, "Failed BeginScene: 0x%lX", hr);
        return;
    }

    Direct3D9RenderRegion(vd, picture, 1);

    if (subpicture_count)
    {
        IDirect3DDevice9_SetRenderState(d3ddev, D3DRS_ALPHABLENDENABLE, TRUE);
        for (size_t i = 0; i < subpicture_count; i++) {
            d3d_region_t *r = &subpicture[i];
            if (r->texture)
                Direct3D9RenderRegion(vd, r, 0);
        }
        IDirect3DDevice9_SetRenderState(d3ddev, D3DRS_ALPHABLENDENABLE, FALSE);
    }

    hr = IDirect3DDevice9_EndScene(d3ddev);
    if (FAILED(hr))
        msg_Dbg(vd, "Failed EndScene: 0x%lX", hr);

    if (sys->startEndRenderingCb)
        sys->startEndRenderingCb( sys->outside_opaque, 0, ((void*)0) );
}
