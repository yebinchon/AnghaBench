
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_44__ TYPE_8__ ;
typedef struct TYPE_43__ TYPE_7__ ;
typedef struct TYPE_42__ TYPE_6__ ;
typedef struct TYPE_41__ TYPE_5__ ;
typedef struct TYPE_40__ TYPE_4__ ;
typedef struct TYPE_39__ TYPE_3__ ;
typedef struct TYPE_38__ TYPE_2__ ;
typedef struct TYPE_37__ TYPE_23__ ;
typedef struct TYPE_36__ TYPE_1__ ;
typedef struct TYPE_35__ TYPE_16__ ;
typedef struct TYPE_34__ TYPE_15__ ;
typedef struct TYPE_33__ TYPE_11__ ;


struct TYPE_36__ {int projection_mode; int orientation; scalar_t__ i_visible_height; scalar_t__ i_y_offset; scalar_t__ i_visible_width; scalar_t__ i_x_offset; } ;
struct TYPE_41__ {TYPE_1__ source; TYPE_6__* sys; } ;
typedef TYPE_5__ vout_display_t ;
struct TYPE_40__ {int ** texture; int renderSrc; } ;
struct TYPE_33__ {TYPE_23__* textureFormat; } ;
struct TYPE_34__ {scalar_t__ feature_level; int d3ddevice; } ;
struct TYPE_35__ {int i_chroma; } ;
struct TYPE_38__ {int viewpoint; } ;
struct TYPE_39__ {TYPE_16__ texture_source; TYPE_2__ vdcfg; } ;
struct TYPE_42__ {int legacy_shader; TYPE_4__ stagingSys; TYPE_11__ picQuad; TYPE_15__ d3d_dev; int stagingPlanes; TYPE_3__ area; int display; int hd3d; } ;
typedef TYPE_6__ vout_display_sys_t ;
struct TYPE_43__ {scalar_t__ color_range; int i_chroma; int primaries; int transfer; } ;
typedef TYPE_7__ video_format_t ;
struct TYPE_44__ {scalar_t__ bottom; scalar_t__ top; scalar_t__ right; scalar_t__ left; } ;
struct TYPE_37__ {int fourcc; } ;
typedef TYPE_8__ RECT ;
typedef int ID3D11Texture2D ;
typedef int ID3D10Multithread ;
typedef int HRESULT ;


 scalar_t__ AllocateTextures (TYPE_5__*,TYPE_15__*,TYPE_23__*,TYPE_16__*,int,int **,int ) ;
 scalar_t__ BogusZeroCopy (TYPE_5__*) ;
 scalar_t__ COLOR_RANGE_FULL ;
 int CanUseTextureArray (TYPE_5__*) ;
 scalar_t__ D3D11_AllocateQuad (TYPE_5__*,TYPE_15__*,int ,TYPE_11__*) ;
 scalar_t__ D3D11_AllocateResourceView (TYPE_5__*,int ,TYPE_23__*,int **,int ,int ) ;
 int D3D11_CompilePixelShader (TYPE_5__*,int *,int,TYPE_15__*,int *,int ,int ,int,TYPE_11__*) ;
 int D3D11_MAX_SHADER_VIEW ;
 scalar_t__ D3D11_SetupQuad (TYPE_5__*,TYPE_15__*,TYPE_16__*,TYPE_11__*,int *,TYPE_8__*,int ) ;
 scalar_t__ D3D_FEATURE_LEVEL_10_0 ;
 scalar_t__ FAILED (int ) ;
 int ID3D10Multithread_Release (int *) ;
 int ID3D10Multithread_SetMultithreadProtected (int *,int ) ;
 int ID3D11Device_QueryInterface (int ,int *,void**) ;
 int IID_ID3D10Multithread ;
 int PROJECTION_MODE_CUBEMAP_LAYOUT_STANDARD ;
 int PROJECTION_MODE_EQUIRECTANGULAR ;
 scalar_t__ SUCCEEDED (int ) ;
 int SetQuadVSProjection (TYPE_5__*,TYPE_11__*,int *) ;
 int TRUE ;
 int VLC_EGENERIC ;
 scalar_t__ VLC_SUCCESS ;
 scalar_t__ is_d3d11_opaque (int ) ;
 int msg_Err (TYPE_5__*,char*,...) ;

__attribute__((used)) static int Direct3D11CreateFormatResources(vout_display_t *vd, const video_format_t *fmt)
{
    vout_display_sys_t *sys = vd->sys;
    HRESULT hr;

    sys->legacy_shader = sys->d3d_dev.feature_level < D3D_FEATURE_LEVEL_10_0 || !CanUseTextureArray(vd) ||
            BogusZeroCopy(vd);

    hr = D3D11_CompilePixelShader(vd, &sys->hd3d, sys->legacy_shader, &sys->d3d_dev,
                                  &sys->display, fmt->transfer, fmt->primaries,
                                  fmt->color_range == COLOR_RANGE_FULL,
                                  &sys->picQuad);
    if (FAILED(hr))
    {
        msg_Err(vd, "Failed to create the pixel shader. (hr=0x%lX)", hr);
        return VLC_EGENERIC;
    }

    if (D3D11_AllocateQuad(vd, &sys->d3d_dev, vd->source.projection_mode, &sys->picQuad) != VLC_SUCCESS)
    {
        msg_Err(vd, "Could not allocate quad buffers.");
       return VLC_EGENERIC;
    }

    RECT source_rect = {
        .left = vd->source.i_x_offset,
        .right = vd->source.i_x_offset + vd->source.i_visible_width,
        .top = vd->source.i_y_offset,
        .bottom = vd->source.i_y_offset + vd->source.i_visible_height,
    };
    if (D3D11_SetupQuad( vd, &sys->d3d_dev, &sys->area.texture_source, &sys->picQuad, &sys->display,
                         &source_rect,
                         vd->source.orientation ) != VLC_SUCCESS) {
        msg_Err(vd, "Could not Create the main quad picture.");
        return VLC_EGENERIC;
    }

    if ( vd->source.projection_mode == PROJECTION_MODE_EQUIRECTANGULAR ||
         vd->source.projection_mode == PROJECTION_MODE_CUBEMAP_LAYOUT_STANDARD )
        SetQuadVSProjection( vd, &sys->picQuad, &sys->area.vdcfg.viewpoint );

    if (is_d3d11_opaque(fmt->i_chroma)) {
        ID3D10Multithread *pMultithread;
        hr = ID3D11Device_QueryInterface( sys->d3d_dev.d3ddevice, &IID_ID3D10Multithread, (void **)&pMultithread);
        if (SUCCEEDED(hr)) {
            ID3D10Multithread_SetMultithreadProtected(pMultithread, TRUE);
            ID3D10Multithread_Release(pMultithread);
        }
    }
    return VLC_SUCCESS;
}
