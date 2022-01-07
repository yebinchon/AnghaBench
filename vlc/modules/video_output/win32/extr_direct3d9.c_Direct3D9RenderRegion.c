
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* sys; } ;
typedef TYPE_2__ vout_display_t ;
struct TYPE_8__ {int * dev; } ;
struct TYPE_10__ {int * d3dx_shader; int sceneVertexBuffer; TYPE_1__ d3d_dev; } ;
typedef TYPE_3__ vout_display_sys_t ;
struct TYPE_11__ {float width; float height; scalar_t__ texture; int vertex; } ;
typedef TYPE_4__ d3d_region_t ;
typedef int IDirect3DDevice9 ;
typedef int IDirect3DBaseTexture9 ;
typedef int HRESULT ;
typedef int CUSTOMVERTEX ;


 int D3DLOCK_DISCARD ;
 int D3DPT_TRIANGLEFAN ;
 scalar_t__ FAILED (int ) ;
 int IDirect3DDevice9_DrawPrimitive (int *,int ,int ,int) ;
 int IDirect3DDevice9_SetPixelShader (int *,int *) ;
 int IDirect3DDevice9_SetPixelShaderConstantF (int *,int ,float*,int) ;
 int IDirect3DDevice9_SetStreamSource (int *,int ,int ,int ,int) ;
 int IDirect3DDevice9_SetTexture (int *,int ,int *) ;
 int IDirect3DVertexBuffer9_Lock (int ,int ,int ,void**,int ) ;
 int IDirect3DVertexBuffer9_Unlock (int ) ;
 int memcpy (void*,int ,int) ;
 int msg_Dbg (TYPE_2__*,char*,int ) ;

__attribute__((used)) static int Direct3D9RenderRegion(vout_display_t *vd,
                                const d3d_region_t *region,
                                bool use_pixel_shader)
{
    vout_display_sys_t *sys = vd->sys;

    IDirect3DDevice9 *d3ddev = vd->sys->d3d_dev.dev;

    HRESULT hr;


    void *vertex;
    hr = IDirect3DVertexBuffer9_Lock(sys->sceneVertexBuffer, 0, 0, &vertex, D3DLOCK_DISCARD);
    if (FAILED(hr)) {
        msg_Dbg(vd, "Failed IDirect3DVertexBuffer9_Lock: 0x%lX", hr);
        return -1;
    }
    memcpy(vertex, region->vertex, sizeof(region->vertex));
    hr = IDirect3DVertexBuffer9_Unlock(sys->sceneVertexBuffer);
    if (FAILED(hr)) {
        msg_Dbg(vd, "Failed IDirect3DVertexBuffer9_Unlock: 0x%lX", hr);
        return -1;
    }


    hr = IDirect3DDevice9_SetStreamSource(d3ddev, 0, sys->sceneVertexBuffer, 0, sizeof(CUSTOMVERTEX));
    if (FAILED(hr)) {
        msg_Dbg(vd, "Failed SetStreamSource: 0x%lX", hr);
        return -1;
    }





    hr = IDirect3DDevice9_SetTexture(d3ddev, 0, (IDirect3DBaseTexture9*)region->texture);
    if (FAILED(hr)) {
        msg_Dbg(vd, "Failed SetTexture: 0x%lX", hr);
        return -1;
    }

    if (sys->d3dx_shader) {
        if (use_pixel_shader)
        {
            hr = IDirect3DDevice9_SetPixelShader(d3ddev, sys->d3dx_shader);
            float shader_data[4] = { region->width, region->height, 0, 0 };
            hr = IDirect3DDevice9_SetPixelShaderConstantF(d3ddev, 0, shader_data, 1);
            if (FAILED(hr)) {
                msg_Dbg(vd, "Failed SetPixelShaderConstantF: 0x%lX", hr);
                return -1;
            }
        }
        else
            hr = IDirect3DDevice9_SetPixelShader(d3ddev, ((void*)0));
        if (FAILED(hr)) {
            msg_Dbg(vd, "Failed SetPixelShader: 0x%lX", hr);
            return -1;
        }
    }


    hr = IDirect3DDevice9_DrawPrimitive(d3ddev, D3DPT_TRIANGLEFAN, 0, 2);
    if (FAILED(hr)) {
        msg_Dbg(vd, "Failed DrawPrimitive: 0x%lX", hr);
        return -1;
    }
    return 0;
}
