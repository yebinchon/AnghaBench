
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * shader; int * layout; } ;
typedef TYPE_1__ d3d_vshader_t ;


 int ID3D11InputLayout_Release (int *) ;
 int ID3D11VertexShader_Release (int *) ;

void D3D11_ReleaseVertexShader(d3d_vshader_t *shader)
{
    if (shader->layout)
    {
        ID3D11InputLayout_Release(shader->layout);
        shader->layout = ((void*)0);
    }
    if (shader->shader)
    {
        ID3D11VertexShader_Release(shader->shader);
        shader->shader = ((void*)0);
    }
}
