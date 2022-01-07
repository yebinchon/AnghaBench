
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_7__ {scalar_t__* pPixelShaderConstants; } ;
typedef TYPE_1__ d3d_quad_t ;
struct TYPE_8__ {int d3dcontext; } ;
typedef TYPE_2__ d3d11_device_t ;
struct TYPE_9__ {int pData; } ;
typedef int PS_CONSTANT_BUFFER ;
typedef int PS_COLOR_TRANSFORM ;
typedef int ID3D11Resource ;
typedef int HRESULT ;
typedef TYPE_3__ D3D11_MAPPED_SUBRESOURCE ;


 int D3D11_MAP_WRITE_DISCARD ;
 scalar_t__ FAILED (int ) ;
 int ID3D11DeviceContext_Map (int ,int *,int ,int ,int ,TYPE_3__*) ;
 int ID3D11DeviceContext_Unmap (int ,int *,int ) ;
 size_t PS_CONST_LUMI_BOUNDS ;
 int memcpy (int ,void*,int) ;
 int msg_Err (int *,char*,int ) ;

__attribute__((used)) static bool ShaderUpdateConstants(vlc_object_t *o, d3d11_device_t *d3d_dev, d3d_quad_t *quad, size_t index, void *new_buf)
{
    D3D11_MAPPED_SUBRESOURCE mappedResource;
    HRESULT hr = ID3D11DeviceContext_Map(d3d_dev->d3dcontext, (ID3D11Resource *)quad->pPixelShaderConstants[index], 0, D3D11_MAP_WRITE_DISCARD, 0, &mappedResource);
    if (FAILED(hr))
    {
        msg_Err(o, "Failed to lock the picture shader constants (hr=0x%lX)", hr);
        return 0;
    }

    if (index == PS_CONST_LUMI_BOUNDS)
        memcpy(mappedResource.pData, new_buf,sizeof(PS_CONSTANT_BUFFER));
    else
        memcpy(mappedResource.pData, new_buf,sizeof(PS_COLOR_TRANSFORM));
    ID3D11DeviceContext_Unmap(d3d_dev->d3dcontext, (ID3D11Resource *)quad->pPixelShaderConstants[index], 0);
    return 1;
}
