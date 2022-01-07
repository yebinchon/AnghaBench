
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {float Opacity; } ;
struct TYPE_5__ {TYPE_3__ shaderConstants; } ;
typedef TYPE_1__ d3d_quad_t ;
typedef int d3d11_device_t ;


 int PS_CONST_LUMI_BOUNDS ;
 int ShaderUpdateConstants (int *,int *,TYPE_1__*,int ,TYPE_3__*) ;

void D3D11_UpdateQuadOpacity(vlc_object_t *o, d3d11_device_t *d3d_dev, d3d_quad_t *quad, float opacity)
{
    if (quad->shaderConstants.Opacity == opacity)
        return;

    float old = quad->shaderConstants.Opacity;
    quad->shaderConstants.Opacity = opacity;
    if (!ShaderUpdateConstants(o, d3d_dev, quad, PS_CONST_LUMI_BOUNDS, &quad->shaderConstants))
        quad->shaderConstants.Opacity = old;
}
