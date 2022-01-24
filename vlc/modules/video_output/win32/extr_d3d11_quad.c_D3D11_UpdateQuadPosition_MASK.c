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
typedef  int /*<<< orphan*/  video_orientation_t ;
typedef  int /*<<< orphan*/  d3d_vertex_t ;
struct TYPE_10__ {int projection; int /*<<< orphan*/ * pVertexBuffer; scalar_t__ pIndexBuffer; } ;
typedef  TYPE_1__ d3d_quad_t ;
struct TYPE_11__ {int /*<<< orphan*/  d3dcontext; } ;
typedef  TYPE_2__ d3d11_device_t ;
struct TYPE_12__ {int /*<<< orphan*/ * pData; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  ID3D11Resource ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_3__ D3D11_MAPPED_SUBRESOURCE ;

/* Variables and functions */
 int /*<<< orphan*/  D3D11_MAP_WRITE_DISCARD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
#define  PROJECTION_MODE_CUBEMAP_LAYOUT_STANDARD 130 
#define  PROJECTION_MODE_EQUIRECTANGULAR 129 
#define  PROJECTION_MODE_RECTANGULAR 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

bool FUNC9( vlc_object_t *o, d3d11_device_t *d3d_dev, d3d_quad_t *quad,
                                const RECT *output, video_orientation_t orientation )
{
    bool result = true;
    HRESULT hr;
    D3D11_MAPPED_SUBRESOURCE mappedResource;
    d3d_vertex_t *dst_data;

    if (FUNC8(quad->pVertexBuffer == NULL))
        return false;

    /* create the vertices */
    hr = FUNC1(d3d_dev->d3dcontext, (ID3D11Resource *)quad->pVertexBuffer, 0, D3D11_MAP_WRITE_DISCARD, 0, &mappedResource);
    if (FUNC0(hr)) {
        FUNC6(o, "Failed to lock the vertex buffer (hr=0x%lX)", hr);
        return false;
    }
    dst_data = mappedResource.pData;

    /* create the vertex indices */
    hr = FUNC1(d3d_dev->d3dcontext, (ID3D11Resource *)quad->pIndexBuffer, 0, D3D11_MAP_WRITE_DISCARD, 0, &mappedResource);
    if (FUNC0(hr)) {
        FUNC6(o, "Failed to lock the index buffer (hr=0x%lX)", hr);
        FUNC2(d3d_dev->d3dcontext, (ID3D11Resource *)quad->pVertexBuffer, 0);
        return false;
    }

    switch (quad->projection)
    {
    case PROJECTION_MODE_RECTANGULAR:
        FUNC4(dst_data, output, quad, mappedResource.pData, orientation);
        break;
    case PROJECTION_MODE_EQUIRECTANGULAR:
        FUNC5(dst_data, output, quad, mappedResource.pData);
        break;
    case PROJECTION_MODE_CUBEMAP_LAYOUT_STANDARD:
        FUNC3(dst_data, output, quad, mappedResource.pData);
        break;
    default:
        FUNC7(o, "Projection mode %d not handled", quad->projection);
        result = false;
    }

    FUNC2(d3d_dev->d3dcontext, (ID3D11Resource *)quad->pIndexBuffer, 0);
    FUNC2(d3d_dev->d3dcontext, (ID3D11Resource *)quad->pVertexBuffer, 0);

    return result;
}