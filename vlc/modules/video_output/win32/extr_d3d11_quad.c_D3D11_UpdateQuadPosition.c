
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int video_orientation_t ;
typedef int d3d_vertex_t ;
struct TYPE_10__ {int projection; int * pVertexBuffer; scalar_t__ pIndexBuffer; } ;
typedef TYPE_1__ d3d_quad_t ;
struct TYPE_11__ {int d3dcontext; } ;
typedef TYPE_2__ d3d11_device_t ;
struct TYPE_12__ {int * pData; } ;
typedef int RECT ;
typedef int ID3D11Resource ;
typedef int HRESULT ;
typedef TYPE_3__ D3D11_MAPPED_SUBRESOURCE ;


 int D3D11_MAP_WRITE_DISCARD ;
 scalar_t__ FAILED (int ) ;
 int ID3D11DeviceContext_Map (int ,int *,int ,int ,int ,TYPE_3__*) ;
 int ID3D11DeviceContext_Unmap (int ,int *,int ) ;



 int SetupQuadCube (int *,int const*,TYPE_1__*,int *) ;
 int SetupQuadFlat (int *,int const*,TYPE_1__*,int *,int ) ;
 int SetupQuadSphere (int *,int const*,TYPE_1__*,int *) ;
 int msg_Err (int *,char*,int ) ;
 int msg_Warn (int *,char*,int) ;
 scalar_t__ unlikely (int ) ;

bool D3D11_UpdateQuadPosition( vlc_object_t *o, d3d11_device_t *d3d_dev, d3d_quad_t *quad,
                                const RECT *output, video_orientation_t orientation )
{
    bool result = 1;
    HRESULT hr;
    D3D11_MAPPED_SUBRESOURCE mappedResource;
    d3d_vertex_t *dst_data;

    if (unlikely(quad->pVertexBuffer == ((void*)0)))
        return 0;


    hr = ID3D11DeviceContext_Map(d3d_dev->d3dcontext, (ID3D11Resource *)quad->pVertexBuffer, 0, D3D11_MAP_WRITE_DISCARD, 0, &mappedResource);
    if (FAILED(hr)) {
        msg_Err(o, "Failed to lock the vertex buffer (hr=0x%lX)", hr);
        return 0;
    }
    dst_data = mappedResource.pData;


    hr = ID3D11DeviceContext_Map(d3d_dev->d3dcontext, (ID3D11Resource *)quad->pIndexBuffer, 0, D3D11_MAP_WRITE_DISCARD, 0, &mappedResource);
    if (FAILED(hr)) {
        msg_Err(o, "Failed to lock the index buffer (hr=0x%lX)", hr);
        ID3D11DeviceContext_Unmap(d3d_dev->d3dcontext, (ID3D11Resource *)quad->pVertexBuffer, 0);
        return 0;
    }

    switch (quad->projection)
    {
    case 128:
        SetupQuadFlat(dst_data, output, quad, mappedResource.pData, orientation);
        break;
    case 129:
        SetupQuadSphere(dst_data, output, quad, mappedResource.pData);
        break;
    case 130:
        SetupQuadCube(dst_data, output, quad, mappedResource.pData);
        break;
    default:
        msg_Warn(o, "Projection mode %d not handled", quad->projection);
        result = 0;
    }

    ID3D11DeviceContext_Unmap(d3d_dev->d3dcontext, (ID3D11Resource *)quad->pIndexBuffer, 0);
    ID3D11DeviceContext_Unmap(d3d_dev->d3dcontext, (ID3D11Resource *)quad->pVertexBuffer, 0);

    return result;
}
