#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  video_projection_mode_t ;
struct TYPE_10__ {int /*<<< orphan*/  projection; int /*<<< orphan*/  pVertexShaderConstants; int /*<<< orphan*/ * pPixelShaderConstants; } ;
typedef  TYPE_1__ d3d_quad_t ;
struct TYPE_11__ {int /*<<< orphan*/  d3ddevice; } ;
typedef  TYPE_2__ d3d11_device_t ;
typedef  int /*<<< orphan*/  VS_PROJECTION_CONST ;
struct TYPE_12__ {int ByteWidth; int /*<<< orphan*/  CPUAccessFlags; int /*<<< orphan*/  BindFlags; int /*<<< orphan*/  Usage; } ;
typedef  int /*<<< orphan*/  PS_CONSTANT_BUFFER ;
typedef  int /*<<< orphan*/  PS_COLOR_TRANSFORM ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_3__ D3D11_BUFFER_DESC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  D3D11_BIND_CONSTANT_BUFFER ; 
 int /*<<< orphan*/  D3D11_CPU_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  D3D11_USAGE_DYNAMIC ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PROJECTION_MODE_CUBEMAP_LAYOUT_STANDARD ; 
 int /*<<< orphan*/  PROJECTION_MODE_EQUIRECTANGULAR ; 
 size_t PS_CONST_COLORSPACE ; 
 size_t PS_CONST_LUMI_BOUNDS ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 

int FUNC6(vlc_object_t *o, d3d11_device_t *d3d_dev,
                       video_projection_mode_t projection, d3d_quad_t *quad)
{
    HRESULT hr;
    FUNC5((sizeof(PS_CONSTANT_BUFFER)%16)==0,"Constant buffers require 16-byte alignment");
    D3D11_BUFFER_DESC constantDesc = {
        .Usage = D3D11_USAGE_DYNAMIC,
        .ByteWidth = sizeof(PS_CONSTANT_BUFFER),
        .BindFlags = D3D11_BIND_CONSTANT_BUFFER,
        .CPUAccessFlags = D3D11_CPU_ACCESS_WRITE,
    };
    hr = FUNC3(d3d_dev->d3ddevice, &constantDesc, NULL, &quad->pPixelShaderConstants[PS_CONST_LUMI_BOUNDS]);
    if(FUNC2(hr)) {
        FUNC4(o, "Could not create the pixel shader constant buffer. (hr=0x%lX)", hr);
        goto error;
    }

    FUNC5((sizeof(PS_COLOR_TRANSFORM)%16)==0,"Constant buffers require 16-byte alignment");
    constantDesc.ByteWidth = sizeof(PS_COLOR_TRANSFORM);
    hr = FUNC3(d3d_dev->d3ddevice, &constantDesc, NULL, &quad->pPixelShaderConstants[PS_CONST_COLORSPACE]);
    if(FUNC2(hr)) {
        FUNC4(o, "Could not create the pixel shader colorspace buffer. (hr=0x%lX)", hr);
        goto error;
    }

    if (projection == PROJECTION_MODE_EQUIRECTANGULAR || projection == PROJECTION_MODE_CUBEMAP_LAYOUT_STANDARD)
    {
        FUNC5((sizeof(VS_PROJECTION_CONST)%16)==0,"Constant buffers require 16-byte alignment");
        constantDesc.ByteWidth = sizeof(VS_PROJECTION_CONST);
        hr = FUNC3(d3d_dev->d3ddevice, &constantDesc, NULL, &quad->pVertexShaderConstants);
        if(FUNC2(hr)) {
            FUNC4(o, "Could not create the vertex shader constant buffer. (hr=0x%lX)", hr);
            goto error;
        }
    }

    if (!FUNC0(o, d3d_dev, quad, projection))
        goto error;
    quad->projection = projection;

    return VLC_SUCCESS;

error:
    FUNC1(quad);
    return VLC_EGENERIC;
}