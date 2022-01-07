
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int picSys; int ** d3dsampState; int * pVertexShaderConstants; int * pIndexBuffer; int * pVertexBuffer; int ** pPixelShaderConstants; } ;
typedef TYPE_1__ d3d_quad_t ;


 int D3D11_ReleasePixelShader (TYPE_1__*) ;
 int ID3D11Buffer_Release (int *) ;
 int ID3D11SamplerState_Release (int *) ;
 size_t PS_CONST_COLORSPACE ;
 size_t PS_CONST_LUMI_BOUNDS ;
 int ReleaseD3D11PictureSys (int *) ;

void D3D11_ReleaseQuad(d3d_quad_t *quad)
{
    if (quad->pPixelShaderConstants[PS_CONST_LUMI_BOUNDS])
    {
        ID3D11Buffer_Release(quad->pPixelShaderConstants[PS_CONST_LUMI_BOUNDS]);
        quad->pPixelShaderConstants[PS_CONST_LUMI_BOUNDS] = ((void*)0);
    }
    if (quad->pPixelShaderConstants[PS_CONST_COLORSPACE])
    {
        ID3D11Buffer_Release(quad->pPixelShaderConstants[PS_CONST_COLORSPACE]);
        quad->pPixelShaderConstants[PS_CONST_COLORSPACE] = ((void*)0);
    }
    if (quad->pVertexBuffer)
    {
        ID3D11Buffer_Release(quad->pVertexBuffer);
        quad->pVertexBuffer = ((void*)0);
    }
    if (quad->pIndexBuffer)
    {
        ID3D11Buffer_Release(quad->pIndexBuffer);
        quad->pIndexBuffer = ((void*)0);
    }
    if (quad->pVertexShaderConstants)
    {
        ID3D11Buffer_Release(quad->pVertexShaderConstants);
        quad->pVertexShaderConstants = ((void*)0);
    }
    D3D11_ReleasePixelShader(quad);
    for (size_t i=0; i<2; i++)
    {
        if (quad->d3dsampState[i])
        {
            ID3D11SamplerState_Release(quad->d3dsampState[i]);
            quad->d3dsampState[i] = ((void*)0);
        }
    }
    ReleaseD3D11PictureSys(&quad->picSys);
}
