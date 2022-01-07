
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int video_projection_mode_t ;
typedef int d3d_vertex_t ;
struct TYPE_8__ {int vertexCount; int indexCount; int vertexStride; int * pIndexBuffer; int * pVertexBuffer; } ;
typedef TYPE_1__ d3d_quad_t ;
struct TYPE_9__ {int d3ddevice; } ;
typedef TYPE_2__ d3d11_device_t ;
typedef int bd ;
typedef int WORD ;
struct TYPE_10__ {int ByteWidth; int CPUAccessFlags; int BindFlags; int Usage; } ;
typedef int HRESULT ;
typedef TYPE_3__ D3D11_BUFFER_DESC ;


 int D3D11_BIND_INDEX_BUFFER ;
 int D3D11_BIND_VERTEX_BUFFER ;
 int D3D11_CPU_ACCESS_WRITE ;
 int D3D11_USAGE_DYNAMIC ;
 scalar_t__ FAILED (int ) ;
 int ID3D11Buffer_Release (int *) ;
 int ID3D11Device_CreateBuffer (int ,TYPE_3__*,int *,int **) ;



 int SPHERE_SLICES ;
 int memset (TYPE_3__*,int ,int) ;
 int msg_Err (int *,char*,int ) ;
 int msg_Warn (int *,char*,int) ;
 int nbLatBands ;
 int nbLonBands ;

__attribute__((used)) static bool AllocQuadVertices(vlc_object_t *o, d3d11_device_t *d3d_dev, d3d_quad_t *quad, video_projection_mode_t projection)
{
    HRESULT hr;

    switch (projection)
    {
    case 128:
        quad->vertexCount = 4;
        quad->indexCount = 2 * 3;
        break;
    case 129:
        quad->vertexCount = (SPHERE_SLICES + 1) * (SPHERE_SLICES + 1);
        quad->indexCount = nbLatBands * nbLonBands * 2 * 3;
        break;
    case 130:
        quad->vertexCount = 4 * 6;
        quad->indexCount = 6 * 2 * 3;
        break;
    default:
        msg_Warn(o, "Projection mode %d not handled", projection);
        return 0;
    }

    quad->vertexStride = sizeof(d3d_vertex_t);

    D3D11_BUFFER_DESC bd;
    memset(&bd, 0, sizeof(bd));
    bd.Usage = D3D11_USAGE_DYNAMIC;
    bd.ByteWidth = quad->vertexStride * quad->vertexCount;
    bd.BindFlags = D3D11_BIND_VERTEX_BUFFER;
    bd.CPUAccessFlags = D3D11_CPU_ACCESS_WRITE;

    hr = ID3D11Device_CreateBuffer(d3d_dev->d3ddevice, &bd, ((void*)0), &quad->pVertexBuffer);
    if(FAILED(hr)) {
        msg_Err(o, "Failed to create vertex buffer. (hr=%lX)", hr);
        goto fail;
    }


    D3D11_BUFFER_DESC quadDesc = {
        .Usage = D3D11_USAGE_DYNAMIC,
        .ByteWidth = sizeof(WORD) * quad->indexCount,
        .BindFlags = D3D11_BIND_INDEX_BUFFER,
        .CPUAccessFlags = D3D11_CPU_ACCESS_WRITE,
    };

    hr = ID3D11Device_CreateBuffer(d3d_dev->d3ddevice, &quadDesc, ((void*)0), &quad->pIndexBuffer);
    if(FAILED(hr)) {
        msg_Err(o, "Could not create the quad indices. (hr=0x%lX)", hr);
        goto fail;
    }

    return 1;
fail:
    if (quad->pVertexBuffer)
    {
        ID3D11Buffer_Release(quad->pVertexBuffer);
        quad->pVertexBuffer = ((void*)0);
    }
    if (quad->pVertexBuffer)
    {
        ID3D11Buffer_Release(quad->pIndexBuffer);
        quad->pIndexBuffer = ((void*)0);
    }
    return 0;
}
