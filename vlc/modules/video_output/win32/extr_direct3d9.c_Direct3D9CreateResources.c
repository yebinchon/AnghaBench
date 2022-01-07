
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {TYPE_5__* sys; } ;
typedef TYPE_4__ vout_display_t ;
struct TYPE_15__ {int dev; int BufferFormat; } ;
struct TYPE_14__ {int obj; } ;
struct TYPE_18__ {int dx_render; TYPE_3__* sw_texture_fmt; TYPE_2__ d3d_dev; int d3dregion_format; TYPE_1__ hd3d; } ;
typedef TYPE_5__ vout_display_sys_t ;
struct TYPE_19__ {int i_height; int i_width; int i_chroma; } ;
typedef TYPE_6__ video_format_t ;
struct TYPE_16__ {int format; } ;
typedef int HRESULT ;
typedef int D3DFORMAT ;


 int D3DADAPTER_DEFAULT ;
 int D3DDEVTYPE_HAL ;
 int D3DFMT_A8B8G8R8 ;
 int D3DFMT_A8R8G8B8 ;
 int D3DFMT_UNKNOWN ;
 int D3DPOOL_DEFAULT ;
 int D3DRTYPE_TEXTURE ;
 int D3DUSAGE_DYNAMIC ;
 scalar_t__ Direct3D9CreateScene (TYPE_4__*,TYPE_6__ const*) ;
 scalar_t__ Direct3D9CreateShaders (TYPE_4__*) ;
 scalar_t__ FAILED (int ) ;
 int IDirect3D9_CheckDeviceFormat (int ,int ,int ,int ,int ,int ,int ) ;
 int IDirect3DDevice9_CreateOffscreenPlainSurface (int ,int ,int ,int ,int ,int *,int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int is_d3d9_opaque (int ) ;
 int msg_Err (TYPE_4__*,char*,...) ;
 int msg_Warn (TYPE_4__*,char*) ;

__attribute__((used)) static int Direct3D9CreateResources(vout_display_t *vd, const video_format_t *fmt)
{
    vout_display_sys_t *sys = vd->sys;

    if (Direct3D9CreateScene(vd, fmt)) {
        msg_Err(vd, "Direct3D scene initialization failed !");
        return VLC_EGENERIC;
    }
    if (Direct3D9CreateShaders(vd)) {

        msg_Warn(vd, "Direct3D shaders initialization failed !");
    }

    sys->d3dregion_format = D3DFMT_UNKNOWN;
    for (int i = 0; i < 2; i++) {
        D3DFORMAT dfmt = i == 0 ? D3DFMT_A8B8G8R8 : D3DFMT_A8R8G8B8;
        if (SUCCEEDED(IDirect3D9_CheckDeviceFormat(sys->hd3d.obj,
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

    if( !is_d3d9_opaque( fmt->i_chroma ) )
    {
        HRESULT hr = IDirect3DDevice9_CreateOffscreenPlainSurface(sys->d3d_dev.dev,
                                                          fmt->i_width,
                                                          fmt->i_height,
                                                          sys->sw_texture_fmt->format,
                                                          D3DPOOL_DEFAULT,
                                                          &sys->dx_render,
                                                          ((void*)0));
        if (FAILED(hr)) {
           msg_Err(vd, "Failed to allocate offscreen surface (hr=0x%lX)", hr);
           return VLC_EGENERIC;
        }
    }

    return VLC_SUCCESS;
}
