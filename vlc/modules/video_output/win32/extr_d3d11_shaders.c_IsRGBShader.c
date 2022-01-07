
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* resourceFormat; scalar_t__ formatTexture; } ;
typedef TYPE_1__ d3d_format_t ;


 scalar_t__ DXGI_FORMAT_R16_UNORM ;
 scalar_t__ DXGI_FORMAT_R8_UNORM ;
 scalar_t__ DXGI_FORMAT_YUY2 ;

bool IsRGBShader(const d3d_format_t *cfg)
{
    return cfg->resourceFormat[0] != DXGI_FORMAT_R8_UNORM &&
           cfg->resourceFormat[0] != DXGI_FORMAT_R16_UNORM &&
           cfg->formatTexture != DXGI_FORMAT_YUY2;
}
