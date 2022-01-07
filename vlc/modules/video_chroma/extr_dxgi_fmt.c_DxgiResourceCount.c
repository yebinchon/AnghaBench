
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* resourceFormat; } ;
typedef TYPE_1__ d3d_format_t ;
typedef size_t UINT ;


 size_t D3D11_MAX_SHADER_VIEW ;
 scalar_t__ DXGI_FORMAT_UNKNOWN ;

UINT DxgiResourceCount(const d3d_format_t *d3d_fmt)
{
    for (UINT count=0; count<D3D11_MAX_SHADER_VIEW; count++)
    {
        if (d3d_fmt->resourceFormat[count] == DXGI_FORMAT_UNKNOWN)
            return count;
    }
    return D3D11_MAX_SHADER_VIEW;
}
