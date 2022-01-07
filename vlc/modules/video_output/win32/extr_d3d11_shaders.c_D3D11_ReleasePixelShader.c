
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** d3dpixelShader; } ;
typedef TYPE_1__ d3d_quad_t ;


 size_t D3D11_MAX_SHADER_VIEW ;
 int ID3D11PixelShader_Release (int *) ;

void D3D11_ReleasePixelShader(d3d_quad_t *quad)
{
    for (size_t i=0; i<D3D11_MAX_SHADER_VIEW; i++)
    {
        if (quad->d3dpixelShader[i])
        {
            ID3D11PixelShader_Release(quad->d3dpixelShader[i]);
            quad->d3dpixelShader[i] = ((void*)0);
        }
    }
}
