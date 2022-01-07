
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_3__* sys; } ;
typedef TYPE_2__ vout_display_t ;
struct TYPE_12__ {int TextureFilterCaps; int AlphaCmpCaps; } ;
struct TYPE_16__ {TYPE_1__ caps; int BufferFormat; int * dev; } ;
struct TYPE_14__ {int clear_scene; TYPE_5__ d3d_dev; int * d3dregion; scalar_t__ d3dregion_count; int * sceneTexture; int sceneVertexBuffer; } ;
typedef TYPE_3__ vout_display_sys_t ;
struct TYPE_15__ {int i_visible_width; int i_visible_height; int i_height; int i_width; } ;
typedef TYPE_4__ video_format_t ;
typedef TYPE_5__ d3d9_device_t ;
typedef int UINT ;
typedef int IDirect3DDevice9 ;
typedef int HRESULT ;
typedef int CUSTOMVERTEX ;


 int D3DBLEND_INVSRCALPHA ;
 int D3DBLEND_SRCALPHA ;
 int D3DCMP_GREATER ;
 int D3DCOLOR_XRGB (int,int,int) ;
 int D3DCULL_NONE ;
 int D3DFVF_CUSTOMVERTEX ;
 int D3DPCMPCAPS_GREATER ;
 int D3DPOOL_DEFAULT ;
 int D3DPTFILTERCAPS_MAGFLINEAR ;
 int D3DPTFILTERCAPS_MINFLINEAR ;
 int D3DRS_ALPHABLENDENABLE ;
 int D3DRS_ALPHAFUNC ;
 int D3DRS_ALPHAREF ;
 int D3DRS_ALPHATESTENABLE ;
 int D3DRS_AMBIENT ;
 int D3DRS_CULLMODE ;
 int D3DRS_DESTBLEND ;
 int D3DRS_DITHERENABLE ;
 int D3DRS_LIGHTING ;
 int D3DRS_SRCBLEND ;
 int D3DRS_STENCILENABLE ;
 int D3DRS_ZENABLE ;
 int D3DSAMP_ADDRESSU ;
 int D3DSAMP_ADDRESSV ;
 int D3DSAMP_MAGFILTER ;
 int D3DSAMP_MINFILTER ;
 int D3DTADDRESS_CLAMP ;
 int D3DTA_DIFFUSE ;
 int D3DTA_TEXTURE ;
 int D3DTEXF_LINEAR ;
 int D3DTEXF_POINT ;
 int D3DTOP_MODULATE ;
 int D3DTOP_SELECTARG1 ;
 int D3DTSS_ALPHAARG1 ;
 int D3DTSS_ALPHAARG2 ;
 int D3DTSS_ALPHAOP ;
 int D3DTSS_COLORARG1 ;
 int D3DTSS_COLOROP ;
 int D3DUSAGE_DYNAMIC ;
 int D3DUSAGE_RENDERTARGET ;
 int D3DUSAGE_WRITEONLY ;
 int D3DZB_FALSE ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int IDirect3DDevice9_CreateTexture (int *,int,int,int,int ,int ,int ,int **,int *) ;
 int IDirect3DDevice9_CreateVertexBuffer (int *,int,int,int ,int ,int *,int *) ;
 int IDirect3DDevice9_SetFVF (int *,int ) ;
 int IDirect3DDevice9_SetRenderState (int *,int ,int) ;
 int IDirect3DDevice9_SetSamplerState (int *,int ,int ,int ) ;
 int IDirect3DDevice9_SetTextureStageState (int *,int ,int ,int ) ;
 int IDirect3DTexture9_Release (int *) ;
 int TRUE ;
 scalar_t__ UpdateOutput (TYPE_2__*,TYPE_4__ const*) ;
 int VLC_EGENERIC ;
 scalar_t__ VLC_SUCCESS ;
 int msg_Dbg (TYPE_2__*,char*,...) ;
 int msg_Err (TYPE_2__*,char*,int ) ;

__attribute__((used)) static int Direct3D9CreateScene(vout_display_t *vd, const video_format_t *fmt)
{
    vout_display_sys_t *sys = vd->sys;
    const d3d9_device_t *p_d3d9_dev = &sys->d3d_dev;
    IDirect3DDevice9 *d3ddev = p_d3d9_dev->dev;
    HRESULT hr;

    if (UpdateOutput(vd, fmt) != VLC_SUCCESS)
        return VLC_EGENERIC;

    UINT width = fmt->i_visible_width;
    UINT height = fmt->i_visible_height;



    if (height & 1) height++;
    if (width & 1) width++;






    hr = IDirect3DDevice9_CreateTexture(d3ddev,
                                        width,
                                        height,
                                        1,
                                        D3DUSAGE_RENDERTARGET,
                                        p_d3d9_dev->BufferFormat,
                                        D3DPOOL_DEFAULT,
                                        &sys->sceneTexture,
                                        ((void*)0));
    if (FAILED(hr)) {
        msg_Err(vd, "Failed to create texture. (hr=0x%lX)", hr);
        return VLC_EGENERIC;
    }


    msg_Dbg(vd, "Direct3D created texture: %ix%i",
                fmt->i_width, fmt->i_height);





    hr = IDirect3DDevice9_CreateVertexBuffer(d3ddev,
                                             sizeof(CUSTOMVERTEX)*4,
                                             D3DUSAGE_DYNAMIC|D3DUSAGE_WRITEONLY,
                                             D3DFVF_CUSTOMVERTEX,
                                             D3DPOOL_DEFAULT,
                                             &sys->sceneVertexBuffer,
                                             ((void*)0));
    if (FAILED(hr)) {
        msg_Err(vd, "Failed to create vertex buffer. (hr=0x%lX)", hr);
        IDirect3DTexture9_Release(sys->sceneTexture);
        sys->sceneTexture = ((void*)0);
        return VLC_EGENERIC;
    }


    hr = IDirect3DDevice9_SetFVF(d3ddev, D3DFVF_CUSTOMVERTEX);
    if (FAILED(hr)) {
        msg_Dbg(vd, "Failed SetFVF: 0x%lX", hr);
        return -1;
    }


    sys->d3dregion_count = 0;
    sys->d3dregion = ((void*)0);

    sys->clear_scene = 1;



    IDirect3DDevice9_SetSamplerState(d3ddev, 0, D3DSAMP_ADDRESSU, D3DTADDRESS_CLAMP);
    IDirect3DDevice9_SetSamplerState(d3ddev, 0, D3DSAMP_ADDRESSV, D3DTADDRESS_CLAMP);


    if (sys->d3d_dev.caps.TextureFilterCaps & D3DPTFILTERCAPS_MINFLINEAR) {

        IDirect3DDevice9_SetSamplerState(d3ddev, 0, D3DSAMP_MINFILTER, D3DTEXF_LINEAR);
    } else {

        IDirect3DDevice9_SetSamplerState(d3ddev, 0, D3DSAMP_MINFILTER, D3DTEXF_POINT);
    }
    if (sys->d3d_dev.caps.TextureFilterCaps & D3DPTFILTERCAPS_MAGFLINEAR) {

        IDirect3DDevice9_SetSamplerState(d3ddev, 0, D3DSAMP_MAGFILTER, D3DTEXF_LINEAR);
    } else {

        IDirect3DDevice9_SetSamplerState(d3ddev, 0, D3DSAMP_MAGFILTER, D3DTEXF_POINT);
    }


    IDirect3DDevice9_SetRenderState(d3ddev, D3DRS_AMBIENT, D3DCOLOR_XRGB(255,255,255));


    IDirect3DDevice9_SetRenderState(d3ddev, D3DRS_CULLMODE, D3DCULL_NONE);


    IDirect3DDevice9_SetRenderState(d3ddev, D3DRS_ZENABLE, D3DZB_FALSE);


    IDirect3DDevice9_SetRenderState(d3ddev, D3DRS_LIGHTING, FALSE);


    IDirect3DDevice9_SetRenderState(d3ddev, D3DRS_DITHERENABLE, TRUE);


    IDirect3DDevice9_SetRenderState(d3ddev, D3DRS_STENCILENABLE, FALSE);


    IDirect3DDevice9_SetRenderState(d3ddev, D3DRS_ALPHABLENDENABLE, FALSE);
    IDirect3DDevice9_SetRenderState(d3ddev, D3DRS_SRCBLEND,D3DBLEND_SRCALPHA);
    IDirect3DDevice9_SetRenderState(d3ddev, D3DRS_DESTBLEND,D3DBLEND_INVSRCALPHA);

    if (sys->d3d_dev.caps.AlphaCmpCaps & D3DPCMPCAPS_GREATER) {
        IDirect3DDevice9_SetRenderState(d3ddev, D3DRS_ALPHATESTENABLE,TRUE);
        IDirect3DDevice9_SetRenderState(d3ddev, D3DRS_ALPHAREF, 0x00);
        IDirect3DDevice9_SetRenderState(d3ddev, D3DRS_ALPHAFUNC,D3DCMP_GREATER);
    }


    IDirect3DDevice9_SetTextureStageState(d3ddev, 0, D3DTSS_COLOROP,D3DTOP_SELECTARG1);
    IDirect3DDevice9_SetTextureStageState(d3ddev, 0, D3DTSS_COLORARG1,D3DTA_TEXTURE);

    IDirect3DDevice9_SetTextureStageState(d3ddev, 0, D3DTSS_ALPHAOP, D3DTOP_MODULATE);
    IDirect3DDevice9_SetTextureStageState(d3ddev, 0, D3DTSS_ALPHAARG1,D3DTA_TEXTURE);
    IDirect3DDevice9_SetTextureStageState(d3ddev, 0, D3DTSS_ALPHAARG2,D3DTA_DIFFUSE);

    msg_Dbg(vd, "Direct3D9 scene created successfully");

    return VLC_SUCCESS;
}
