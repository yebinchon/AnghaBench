#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_58__   TYPE_9__ ;
typedef  struct TYPE_57__   TYPE_8__ ;
typedef  struct TYPE_56__   TYPE_7__ ;
typedef  struct TYPE_55__   TYPE_6__ ;
typedef  struct TYPE_54__   TYPE_5__ ;
typedef  struct TYPE_53__   TYPE_4__ ;
typedef  struct TYPE_52__   TYPE_3__ ;
typedef  struct TYPE_51__   TYPE_37__ ;
typedef  struct TYPE_50__   TYPE_2__ ;
typedef  struct TYPE_49__   TYPE_27__ ;
typedef  struct TYPE_48__   TYPE_1__ ;
typedef  struct TYPE_47__   TYPE_18__ ;
typedef  struct TYPE_46__   TYPE_16__ ;
typedef  struct TYPE_45__   TYPE_15__ ;
typedef  struct TYPE_44__   TYPE_14__ ;
typedef  struct TYPE_43__   TYPE_13__ ;
typedef  struct TYPE_42__   TYPE_12__ ;
typedef  struct TYPE_41__   TYPE_11__ ;
typedef  struct TYPE_40__   TYPE_10__ ;

/* Type definitions */
struct TYPE_53__ {scalar_t__ projection_mode; } ;
struct TYPE_57__ {TYPE_4__ source; TYPE_9__* sys; } ;
typedef  TYPE_8__ vout_display_t ;
struct TYPE_47__ {int /*<<< orphan*/  d3dcontext; } ;
struct TYPE_54__ {int /*<<< orphan*/ ** renderSrc; } ;
struct TYPE_42__ {scalar_t__ i_height; scalar_t__ i_width; TYPE_6__* textureFormat; TYPE_5__ picSys; } ;
struct TYPE_56__ {int /*<<< orphan*/ ** renderSrc; int /*<<< orphan*/ * resource; int /*<<< orphan*/ * texture; } ;
struct TYPE_52__ {scalar_t__ luminance_peak; } ;
struct TYPE_48__ {scalar_t__ i_width; scalar_t__ i_height; } ;
struct TYPE_51__ {TYPE_1__ texture_source; } ;
struct TYPE_58__ {int d3dregion_count; TYPE_18__ d3d_dev; TYPE_12__ picQuad; scalar_t__ prepareWait; int /*<<< orphan*/  flatVShader; TYPE_10__** d3dregions; int /*<<< orphan*/  projectionVShader; TYPE_7__ stagingSys; scalar_t__ legacy_shader; TYPE_3__ display; int /*<<< orphan*/  sys; TYPE_37__ area; TYPE_16__* stagingPlanes; } ;
typedef  TYPE_9__ vout_display_sys_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  subpicture_t ;
struct TYPE_50__ {scalar_t__ max_luminance; } ;
struct TYPE_49__ {int /*<<< orphan*/  i_chroma; TYPE_2__ mastering; } ;
struct TYPE_40__ {int i_planes; TYPE_27__ format; scalar_t__ p_sys; int /*<<< orphan*/ * p; } ;
typedef  TYPE_10__ picture_t ;
struct TYPE_41__ {int /*<<< orphan*/ ** renderSrc; int /*<<< orphan*/ * texture; int /*<<< orphan*/  slice_index; int /*<<< orphan*/ * resource; } ;
typedef  TYPE_11__ picture_sys_d3d11_t ;
typedef  TYPE_12__ d3d_quad_t ;
struct TYPE_55__ {scalar_t__ formatTexture; } ;
struct TYPE_46__ {int i_pitch; int i_lines; int /*<<< orphan*/ * p_pixels; } ;
struct TYPE_45__ {int back; int /*<<< orphan*/  right; int /*<<< orphan*/  left; int /*<<< orphan*/  bottom; int /*<<< orphan*/  top; } ;
struct TYPE_44__ {int RowPitch; int /*<<< orphan*/ * pData; } ;
struct TYPE_43__ {scalar_t__ Height; scalar_t__ Width; int BindFlags; } ;
typedef  int /*<<< orphan*/  ID3D11ShaderResourceView ;
typedef  int /*<<< orphan*/  ID3D11Asynchronous ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_13__ D3D11_TEXTURE2D_DESC ;
typedef  TYPE_14__ D3D11_MAPPED_SUBRESOURCE ;
typedef  TYPE_15__ D3D11_BOX ;

/* Variables and functions */
 TYPE_11__* FUNC0 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_37__*,int /*<<< orphan*/ *) ; 
 int D3D11_BIND_SHADER_RESOURCE ; 
 int /*<<< orphan*/  D3D11_MAP_WRITE_DISCARD ; 
 int /*<<< orphan*/  FUNC2 (TYPE_18__*,TYPE_12__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,TYPE_18__*,TYPE_12__*,float) ; 
 scalar_t__ DXGI_FORMAT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_10__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,int*,TYPE_10__***,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 float FUNC7 (int /*<<< orphan*/ ,TYPE_27__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_15__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_13__*) ; 
 size_t KNOWN_DXGI_INDEX ; 
 scalar_t__ PROJECTION_MODE_RECTANGULAR ; 
 scalar_t__ S_FALSE ; 
 int /*<<< orphan*/  SelectRenderPlane ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC15 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_18__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_18__*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_8__*,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_16__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC25(vout_display_t *vd, picture_t *picture, subpicture_t *subpicture)
{
    vout_display_sys_t *sys = vd->sys;

    if (sys->picQuad.textureFormat->formatTexture == DXGI_FORMAT_UNKNOWN)
    {
        D3D11_MAPPED_SUBRESOURCE mappedResource;
        int i;
        HRESULT hr;

        bool b_mapped = true;
        for (i = 0; i < picture->i_planes; i++) {
            hr = FUNC11(sys->d3d_dev.d3dcontext, sys->stagingSys.resource[i],
                                         0, D3D11_MAP_WRITE_DISCARD, 0, &mappedResource);
            if( FUNC24(FUNC6(hr)) )
            {
                while (i-- > 0)
                    FUNC12(sys->d3d_dev.d3dcontext, sys->stagingSys.resource[i], 0);
                b_mapped = false;
                break;
            }
            sys->stagingPlanes[i].i_pitch = mappedResource.RowPitch;
            sys->stagingPlanes[i].p_pixels = mappedResource.pData;
        }

        if (b_mapped)
        {
            for (i = 0; i < picture->i_planes; i++)
                FUNC23(&sys->stagingPlanes[i], &picture->p[i]);

            for (i = 0; i < picture->i_planes; i++)
                FUNC12(sys->d3d_dev.d3dcontext, sys->stagingSys.resource[i], 0);
        }
    }
    else if (!FUNC21(picture->format.i_chroma))
    {
        D3D11_MAPPED_SUBRESOURCE mappedResource;
        HRESULT hr;

        hr = FUNC11(sys->d3d_dev.d3dcontext, sys->stagingSys.resource[0],
                                        0, D3D11_MAP_WRITE_DISCARD, 0, &mappedResource);
        if( FUNC24(FUNC6(hr)) )
            FUNC22(vd, "Failed to map the %4.4s staging picture. (hr=0x%lX)", (const char*)&picture->format.i_chroma, hr);
        else
        {
            uint8_t *buf = mappedResource.pData;
            for (int i = 0; i < picture->i_planes; i++)
            {
                sys->stagingPlanes[i].i_pitch = mappedResource.RowPitch;
                sys->stagingPlanes[i].p_pixels = buf;

                FUNC23(&sys->stagingPlanes[i], &picture->p[i]);

                buf += sys->stagingPlanes[i].i_pitch * sys->stagingPlanes[i].i_lines;
            }

            FUNC12(sys->d3d_dev.d3dcontext, sys->stagingSys.resource[0], 0);
        }
    }
    else
    {
        picture_sys_d3d11_t *p_sys = FUNC0(picture);

        FUNC19( &sys->d3d_dev );

        if (sys->legacy_shader) {
            D3D11_TEXTURE2D_DESC srcDesc,texDesc;
            FUNC13(p_sys->texture[KNOWN_DXGI_INDEX], &srcDesc);
            FUNC13(sys->stagingSys.texture[0], &texDesc);
            D3D11_BOX box = {
                .top = 0,
                .bottom = FUNC17(srcDesc.Height, texDesc.Height),
                .left = 0,
                .right = FUNC17(srcDesc.Width, texDesc.Width),
                .back = 1,
            };
            FUNC8(sys->d3d_dev.d3dcontext,
                                                      sys->stagingSys.resource[KNOWN_DXGI_INDEX],
                                                      0, 0, 0, 0,
                                                      p_sys->resource[KNOWN_DXGI_INDEX],
                                                      p_sys->slice_index, &box);
        }
        else
        {
            D3D11_TEXTURE2D_DESC texDesc;
            FUNC13(p_sys->texture[0], &texDesc);
            if (texDesc.BindFlags & D3D11_BIND_SHADER_RESOURCE)
            {
                /* for performance reason we don't want to allocate this during
                 * display, do it preferrably when creating the texture */
                FUNC18(p_sys->renderSrc[0]!=NULL);
            }
            if ( sys->picQuad.i_height != texDesc.Height ||
                 sys->picQuad.i_width != texDesc.Width )
            {
                /* the decoder produced different sizes than the vout, we need to
                 * adjust the vertex */
                sys->area.texture_source.i_width  = sys->picQuad.i_height = texDesc.Height;
                sys->area.texture_source.i_height = sys->picQuad.i_width = texDesc.Width;

                FUNC1(FUNC16(vd), &sys->area, &sys->sys);
                FUNC15(vd);
            }
        }
    }

    if (subpicture) {
        int subpicture_region_count    = 0;
        picture_t **subpicture_regions = NULL;
        FUNC5(vd, &subpicture_region_count, &subpicture_regions, subpicture);
        FUNC4(sys->d3dregion_count, sys->d3dregions);
        sys->d3dregion_count = subpicture_region_count;
        sys->d3dregions      = subpicture_regions;
    }

    if (picture->format.mastering.max_luminance)
    {
        FUNC3(vd, &sys->d3d_dev, &sys->picQuad, (float)sys->display.luminance_peak / FUNC7(FUNC16(vd), &picture->format));
    }

    /* Render the quad */
    ID3D11ShaderResourceView **renderSrc;
    if (!FUNC21(picture->format.i_chroma) || sys->legacy_shader)
        renderSrc = sys->stagingSys.renderSrc;
    else {
        picture_sys_d3d11_t *p_sys = FUNC0(picture);
        renderSrc = p_sys->renderSrc;
    }
    FUNC2(&sys->d3d_dev, &sys->picQuad,
                     vd->source.projection_mode == PROJECTION_MODE_RECTANGULAR ? &sys->flatVShader : &sys->projectionVShader,
                     renderSrc, SelectRenderPlane, sys);

    if (subpicture) {
        // draw the additional vertices
        for (int i = 0; i < sys->d3dregion_count; ++i) {
            if (sys->d3dregions[i])
            {
                d3d_quad_t *quad = (d3d_quad_t *) sys->d3dregions[i]->p_sys;
                FUNC2(&sys->d3d_dev, quad, &sys->flatVShader,
                                 quad->picSys.renderSrc, SelectRenderPlane, sys);
            }
        }
    }

    if (sys->prepareWait)
    {
        int maxWait = 10;
        FUNC9(sys->d3d_dev.d3dcontext, (ID3D11Asynchronous*)sys->prepareWait);

        while (S_FALSE == FUNC10(sys->d3d_dev.d3dcontext,
                                                      (ID3D11Asynchronous*)sys->prepareWait, NULL, 0, 0)
               && --maxWait)
            FUNC14(2, TRUE);
    }

    if (FUNC21(picture->format.i_chroma) && sys->picQuad.textureFormat->formatTexture != DXGI_FORMAT_UNKNOWN)
        FUNC20( &sys->d3d_dev );
}