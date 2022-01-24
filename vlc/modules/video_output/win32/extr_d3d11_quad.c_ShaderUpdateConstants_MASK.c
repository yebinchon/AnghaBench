#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_7__ {scalar_t__* pPixelShaderConstants; } ;
typedef  TYPE_1__ d3d_quad_t ;
struct TYPE_8__ {int /*<<< orphan*/  d3dcontext; } ;
typedef  TYPE_2__ d3d11_device_t ;
struct TYPE_9__ {int /*<<< orphan*/  pData; } ;
typedef  int /*<<< orphan*/  PS_CONSTANT_BUFFER ;
typedef  int /*<<< orphan*/  PS_COLOR_TRANSFORM ;
typedef  int /*<<< orphan*/  ID3D11Resource ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_3__ D3D11_MAPPED_SUBRESOURCE ;

/* Variables and functions */
 int /*<<< orphan*/  D3D11_MAP_WRITE_DISCARD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t PS_CONST_LUMI_BOUNDS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(vlc_object_t *o, d3d11_device_t *d3d_dev, d3d_quad_t *quad, size_t index, void *new_buf)
{
    D3D11_MAPPED_SUBRESOURCE mappedResource;
    HRESULT hr = FUNC1(d3d_dev->d3dcontext, (ID3D11Resource *)quad->pPixelShaderConstants[index], 0, D3D11_MAP_WRITE_DISCARD, 0, &mappedResource);
    if (FUNC0(hr))
    {
        FUNC4(o, "Failed to lock the picture shader constants (hr=0x%lX)", hr);
        return false;
    }

    if (index == PS_CONST_LUMI_BOUNDS)
        FUNC3(mappedResource.pData, new_buf,sizeof(PS_CONSTANT_BUFFER));
    else
        FUNC3(mappedResource.pData, new_buf,sizeof(PS_COLOR_TRANSFORM));
    FUNC2(d3d_dev->d3dcontext, (ID3D11Resource *)quad->pPixelShaderConstants[index], 0);
    return true;
}