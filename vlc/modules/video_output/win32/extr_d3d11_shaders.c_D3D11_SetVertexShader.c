
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int shader; int layout; } ;
typedef TYPE_1__ d3d_vshader_t ;


 int ID3D11InputLayout_AddRef (int ) ;
 int ID3D11VertexShader_AddRef (int ) ;

void D3D11_SetVertexShader(d3d_vshader_t *dst, d3d_vshader_t *src)
{
    dst->layout = src->layout;
    ID3D11InputLayout_AddRef(dst->layout);
    dst->shader = src->shader;
    ID3D11VertexShader_AddRef(dst->shader);
}
