
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_58__ TYPE_9__ ;
typedef struct TYPE_57__ TYPE_8__ ;
typedef struct TYPE_56__ TYPE_7__ ;
typedef struct TYPE_55__ TYPE_6__ ;
typedef struct TYPE_54__ TYPE_5__ ;
typedef struct TYPE_53__ TYPE_4__ ;
typedef struct TYPE_52__ TYPE_3__ ;
typedef struct TYPE_51__ TYPE_37__ ;
typedef struct TYPE_50__ TYPE_2__ ;
typedef struct TYPE_49__ TYPE_27__ ;
typedef struct TYPE_48__ TYPE_1__ ;
typedef struct TYPE_47__ TYPE_18__ ;
typedef struct TYPE_46__ TYPE_16__ ;
typedef struct TYPE_45__ TYPE_15__ ;
typedef struct TYPE_44__ TYPE_14__ ;
typedef struct TYPE_43__ TYPE_13__ ;
typedef struct TYPE_42__ TYPE_12__ ;
typedef struct TYPE_41__ TYPE_11__ ;
typedef struct TYPE_40__ TYPE_10__ ;


struct TYPE_53__ {scalar_t__ projection_mode; } ;
struct TYPE_57__ {TYPE_4__ source; TYPE_9__* sys; } ;
typedef TYPE_8__ vout_display_t ;
struct TYPE_47__ {int d3dcontext; } ;
struct TYPE_54__ {int ** renderSrc; } ;
struct TYPE_42__ {scalar_t__ i_height; scalar_t__ i_width; TYPE_6__* textureFormat; TYPE_5__ picSys; } ;
struct TYPE_56__ {int ** renderSrc; int * resource; int * texture; } ;
struct TYPE_52__ {scalar_t__ luminance_peak; } ;
struct TYPE_48__ {scalar_t__ i_width; scalar_t__ i_height; } ;
struct TYPE_51__ {TYPE_1__ texture_source; } ;
struct TYPE_58__ {int d3dregion_count; TYPE_18__ d3d_dev; TYPE_12__ picQuad; scalar_t__ prepareWait; int flatVShader; TYPE_10__** d3dregions; int projectionVShader; TYPE_7__ stagingSys; scalar_t__ legacy_shader; TYPE_3__ display; int sys; TYPE_37__ area; TYPE_16__* stagingPlanes; } ;
typedef TYPE_9__ vout_display_sys_t ;
typedef int uint8_t ;
typedef int subpicture_t ;
struct TYPE_50__ {scalar_t__ max_luminance; } ;
struct TYPE_49__ {int i_chroma; TYPE_2__ mastering; } ;
struct TYPE_40__ {int i_planes; TYPE_27__ format; scalar_t__ p_sys; int * p; } ;
typedef TYPE_10__ picture_t ;
struct TYPE_41__ {int ** renderSrc; int * texture; int slice_index; int * resource; } ;
typedef TYPE_11__ picture_sys_d3d11_t ;
typedef TYPE_12__ d3d_quad_t ;
struct TYPE_55__ {scalar_t__ formatTexture; } ;
struct TYPE_46__ {int i_pitch; int i_lines; int * p_pixels; } ;
struct TYPE_45__ {int back; int right; int left; int bottom; int top; } ;
struct TYPE_44__ {int RowPitch; int * pData; } ;
struct TYPE_43__ {scalar_t__ Height; scalar_t__ Width; int BindFlags; } ;
typedef int ID3D11ShaderResourceView ;
typedef int ID3D11Asynchronous ;
typedef int HRESULT ;
typedef TYPE_13__ D3D11_TEXTURE2D_DESC ;
typedef TYPE_14__ D3D11_MAPPED_SUBRESOURCE ;
typedef TYPE_15__ D3D11_BOX ;


 TYPE_11__* ActiveD3D11PictureSys (TYPE_10__*) ;
 int CommonPlacePicture (int ,TYPE_37__*,int *) ;
 int D3D11_BIND_SHADER_RESOURCE ;
 int D3D11_MAP_WRITE_DISCARD ;
 int D3D11_RenderQuad (TYPE_18__*,TYPE_12__*,int *,int **,int ,TYPE_9__*) ;
 int D3D11_UpdateQuadLuminanceScale (TYPE_8__*,TYPE_18__*,TYPE_12__*,float) ;
 scalar_t__ DXGI_FORMAT_UNKNOWN ;
 int Direct3D11DeleteRegions (int,TYPE_10__**) ;
 int Direct3D11MapSubpicture (TYPE_8__*,int*,TYPE_10__***,int *) ;
 int FAILED (int ) ;
 float GetFormatLuminance (int ,TYPE_27__*) ;
 int ID3D11DeviceContext_CopySubresourceRegion (int ,int ,int ,int ,int ,int ,int ,int ,TYPE_15__*) ;
 int ID3D11DeviceContext_End (int ,int *) ;
 scalar_t__ ID3D11DeviceContext_GetData (int ,int *,int *,int ,int ) ;
 int ID3D11DeviceContext_Map (int ,int ,int ,int ,int ,TYPE_14__*) ;
 int ID3D11DeviceContext_Unmap (int ,int ,int ) ;
 int ID3D11Texture2D_GetDesc (int ,TYPE_13__*) ;
 size_t KNOWN_DXGI_INDEX ;
 scalar_t__ PROJECTION_MODE_RECTANGULAR ;
 scalar_t__ S_FALSE ;
 int SelectRenderPlane ;
 int SleepEx (int,int ) ;
 int TRUE ;
 int UpdateSize (TYPE_8__*) ;
 int VLC_OBJECT (TYPE_8__*) ;
 int __MIN (scalar_t__,scalar_t__) ;
 int assert (int ) ;
 int d3d11_device_lock (TYPE_18__*) ;
 int d3d11_device_unlock (TYPE_18__*) ;
 scalar_t__ is_d3d11_opaque (int ) ;
 int msg_Err (TYPE_8__*,char*,char const*,int ) ;
 int plane_CopyPixels (TYPE_16__*,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void PreparePicture(vout_display_t *vd, picture_t *picture, subpicture_t *subpicture)
{
    vout_display_sys_t *sys = vd->sys;

    if (sys->picQuad.textureFormat->formatTexture == DXGI_FORMAT_UNKNOWN)
    {
        D3D11_MAPPED_SUBRESOURCE mappedResource;
        int i;
        HRESULT hr;

        bool b_mapped = 1;
        for (i = 0; i < picture->i_planes; i++) {
            hr = ID3D11DeviceContext_Map(sys->d3d_dev.d3dcontext, sys->stagingSys.resource[i],
                                         0, D3D11_MAP_WRITE_DISCARD, 0, &mappedResource);
            if( unlikely(FAILED(hr)) )
            {
                while (i-- > 0)
                    ID3D11DeviceContext_Unmap(sys->d3d_dev.d3dcontext, sys->stagingSys.resource[i], 0);
                b_mapped = 0;
                break;
            }
            sys->stagingPlanes[i].i_pitch = mappedResource.RowPitch;
            sys->stagingPlanes[i].p_pixels = mappedResource.pData;
        }

        if (b_mapped)
        {
            for (i = 0; i < picture->i_planes; i++)
                plane_CopyPixels(&sys->stagingPlanes[i], &picture->p[i]);

            for (i = 0; i < picture->i_planes; i++)
                ID3D11DeviceContext_Unmap(sys->d3d_dev.d3dcontext, sys->stagingSys.resource[i], 0);
        }
    }
    else if (!is_d3d11_opaque(picture->format.i_chroma))
    {
        D3D11_MAPPED_SUBRESOURCE mappedResource;
        HRESULT hr;

        hr = ID3D11DeviceContext_Map(sys->d3d_dev.d3dcontext, sys->stagingSys.resource[0],
                                        0, D3D11_MAP_WRITE_DISCARD, 0, &mappedResource);
        if( unlikely(FAILED(hr)) )
            msg_Err(vd, "Failed to map the %4.4s staging picture. (hr=0x%lX)", (const char*)&picture->format.i_chroma, hr);
        else
        {
            uint8_t *buf = mappedResource.pData;
            for (int i = 0; i < picture->i_planes; i++)
            {
                sys->stagingPlanes[i].i_pitch = mappedResource.RowPitch;
                sys->stagingPlanes[i].p_pixels = buf;

                plane_CopyPixels(&sys->stagingPlanes[i], &picture->p[i]);

                buf += sys->stagingPlanes[i].i_pitch * sys->stagingPlanes[i].i_lines;
            }

            ID3D11DeviceContext_Unmap(sys->d3d_dev.d3dcontext, sys->stagingSys.resource[0], 0);
        }
    }
    else
    {
        picture_sys_d3d11_t *p_sys = ActiveD3D11PictureSys(picture);

        d3d11_device_lock( &sys->d3d_dev );

        if (sys->legacy_shader) {
            D3D11_TEXTURE2D_DESC srcDesc,texDesc;
            ID3D11Texture2D_GetDesc(p_sys->texture[KNOWN_DXGI_INDEX], &srcDesc);
            ID3D11Texture2D_GetDesc(sys->stagingSys.texture[0], &texDesc);
            D3D11_BOX box = {
                .top = 0,
                .bottom = __MIN(srcDesc.Height, texDesc.Height),
                .left = 0,
                .right = __MIN(srcDesc.Width, texDesc.Width),
                .back = 1,
            };
            ID3D11DeviceContext_CopySubresourceRegion(sys->d3d_dev.d3dcontext,
                                                      sys->stagingSys.resource[KNOWN_DXGI_INDEX],
                                                      0, 0, 0, 0,
                                                      p_sys->resource[KNOWN_DXGI_INDEX],
                                                      p_sys->slice_index, &box);
        }
        else
        {
            D3D11_TEXTURE2D_DESC texDesc;
            ID3D11Texture2D_GetDesc(p_sys->texture[0], &texDesc);
            if (texDesc.BindFlags & D3D11_BIND_SHADER_RESOURCE)
            {


                assert(p_sys->renderSrc[0]!=((void*)0));
            }
            if ( sys->picQuad.i_height != texDesc.Height ||
                 sys->picQuad.i_width != texDesc.Width )
            {


                sys->area.texture_source.i_width = sys->picQuad.i_height = texDesc.Height;
                sys->area.texture_source.i_height = sys->picQuad.i_width = texDesc.Width;

                CommonPlacePicture(VLC_OBJECT(vd), &sys->area, &sys->sys);
                UpdateSize(vd);
            }
        }
    }

    if (subpicture) {
        int subpicture_region_count = 0;
        picture_t **subpicture_regions = ((void*)0);
        Direct3D11MapSubpicture(vd, &subpicture_region_count, &subpicture_regions, subpicture);
        Direct3D11DeleteRegions(sys->d3dregion_count, sys->d3dregions);
        sys->d3dregion_count = subpicture_region_count;
        sys->d3dregions = subpicture_regions;
    }

    if (picture->format.mastering.max_luminance)
    {
        D3D11_UpdateQuadLuminanceScale(vd, &sys->d3d_dev, &sys->picQuad, (float)sys->display.luminance_peak / GetFormatLuminance(VLC_OBJECT(vd), &picture->format));
    }


    ID3D11ShaderResourceView **renderSrc;
    if (!is_d3d11_opaque(picture->format.i_chroma) || sys->legacy_shader)
        renderSrc = sys->stagingSys.renderSrc;
    else {
        picture_sys_d3d11_t *p_sys = ActiveD3D11PictureSys(picture);
        renderSrc = p_sys->renderSrc;
    }
    D3D11_RenderQuad(&sys->d3d_dev, &sys->picQuad,
                     vd->source.projection_mode == PROJECTION_MODE_RECTANGULAR ? &sys->flatVShader : &sys->projectionVShader,
                     renderSrc, SelectRenderPlane, sys);

    if (subpicture) {

        for (int i = 0; i < sys->d3dregion_count; ++i) {
            if (sys->d3dregions[i])
            {
                d3d_quad_t *quad = (d3d_quad_t *) sys->d3dregions[i]->p_sys;
                D3D11_RenderQuad(&sys->d3d_dev, quad, &sys->flatVShader,
                                 quad->picSys.renderSrc, SelectRenderPlane, sys);
            }
        }
    }

    if (sys->prepareWait)
    {
        int maxWait = 10;
        ID3D11DeviceContext_End(sys->d3d_dev.d3dcontext, (ID3D11Asynchronous*)sys->prepareWait);

        while (S_FALSE == ID3D11DeviceContext_GetData(sys->d3d_dev.d3dcontext,
                                                      (ID3D11Asynchronous*)sys->prepareWait, ((void*)0), 0, 0)
               && --maxWait)
            SleepEx(2, TRUE);
    }

    if (is_d3d11_opaque(picture->format.i_chroma) && sys->picQuad.textureFormat->formatTexture != DXGI_FORMAT_UNKNOWN)
        d3d11_device_unlock( &sys->d3d_dev );
}
