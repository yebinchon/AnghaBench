
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int video_projection_mode_t ;
struct TYPE_10__ {int projection; int pVertexShaderConstants; int * pPixelShaderConstants; } ;
typedef TYPE_1__ d3d_quad_t ;
struct TYPE_11__ {int d3ddevice; } ;
typedef TYPE_2__ d3d11_device_t ;
typedef int VS_PROJECTION_CONST ;
struct TYPE_12__ {int ByteWidth; int CPUAccessFlags; int BindFlags; int Usage; } ;
typedef int PS_CONSTANT_BUFFER ;
typedef int PS_COLOR_TRANSFORM ;
typedef int HRESULT ;
typedef TYPE_3__ D3D11_BUFFER_DESC ;


 int AllocQuadVertices (int *,TYPE_2__*,TYPE_1__*,int ) ;
 int D3D11_BIND_CONSTANT_BUFFER ;
 int D3D11_CPU_ACCESS_WRITE ;
 int D3D11_ReleaseQuad (TYPE_1__*) ;
 int D3D11_USAGE_DYNAMIC ;
 scalar_t__ FAILED (int ) ;
 int ID3D11Device_CreateBuffer (int ,TYPE_3__*,int *,int *) ;
 int PROJECTION_MODE_CUBEMAP_LAYOUT_STANDARD ;
 int PROJECTION_MODE_EQUIRECTANGULAR ;
 size_t PS_CONST_COLORSPACE ;
 size_t PS_CONST_LUMI_BOUNDS ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Err (int *,char*,int ) ;
 int static_assert (int,char*) ;

int D3D11_AllocateQuad(vlc_object_t *o, d3d11_device_t *d3d_dev,
                       video_projection_mode_t projection, d3d_quad_t *quad)
{
    HRESULT hr;
    static_assert((sizeof(PS_CONSTANT_BUFFER)%16)==0,"Constant buffers require 16-byte alignment");
    D3D11_BUFFER_DESC constantDesc = {
        .Usage = D3D11_USAGE_DYNAMIC,
        .ByteWidth = sizeof(PS_CONSTANT_BUFFER),
        .BindFlags = D3D11_BIND_CONSTANT_BUFFER,
        .CPUAccessFlags = D3D11_CPU_ACCESS_WRITE,
    };
    hr = ID3D11Device_CreateBuffer(d3d_dev->d3ddevice, &constantDesc, ((void*)0), &quad->pPixelShaderConstants[PS_CONST_LUMI_BOUNDS]);
    if(FAILED(hr)) {
        msg_Err(o, "Could not create the pixel shader constant buffer. (hr=0x%lX)", hr);
        goto error;
    }

    static_assert((sizeof(PS_COLOR_TRANSFORM)%16)==0,"Constant buffers require 16-byte alignment");
    constantDesc.ByteWidth = sizeof(PS_COLOR_TRANSFORM);
    hr = ID3D11Device_CreateBuffer(d3d_dev->d3ddevice, &constantDesc, ((void*)0), &quad->pPixelShaderConstants[PS_CONST_COLORSPACE]);
    if(FAILED(hr)) {
        msg_Err(o, "Could not create the pixel shader colorspace buffer. (hr=0x%lX)", hr);
        goto error;
    }

    if (projection == PROJECTION_MODE_EQUIRECTANGULAR || projection == PROJECTION_MODE_CUBEMAP_LAYOUT_STANDARD)
    {
        static_assert((sizeof(VS_PROJECTION_CONST)%16)==0,"Constant buffers require 16-byte alignment");
        constantDesc.ByteWidth = sizeof(VS_PROJECTION_CONST);
        hr = ID3D11Device_CreateBuffer(d3d_dev->d3ddevice, &constantDesc, ((void*)0), &quad->pVertexShaderConstants);
        if(FAILED(hr)) {
            msg_Err(o, "Could not create the vertex shader constant buffer. (hr=0x%lX)", hr);
            goto error;
        }
    }

    if (!AllocQuadVertices(o, d3d_dev, quad, projection))
        goto error;
    quad->projection = projection;

    return VLC_SUCCESS;

error:
    D3D11_ReleaseQuad(quad);
    return VLC_EGENERIC;
}
