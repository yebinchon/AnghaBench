
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int formatTexture; } ;
typedef TYPE_1__ d3d_format_t ;
struct TYPE_6__ {int d3dcontext; } ;
typedef TYPE_2__ d3d11_device_t ;
typedef int ID3D11RenderTargetView ;
typedef float FLOAT ;


 int D3D11_MAX_RENDER_TARGET ;
 int ID3D11DeviceContext_ClearRenderTargetView (int ,int *,float const*) ;
 int static_assert (int,char*) ;
 int vlc_assert_unreachable () ;

void D3D11_ClearRenderTargets(d3d11_device_t *d3d_dev, const d3d_format_t *cfg,
                              ID3D11RenderTargetView *targets[D3D11_MAX_RENDER_TARGET])
{
    static const FLOAT blackY[1] = {0.0f};
    static const FLOAT blackUV[2] = {0.5f, 0.5f};
    static const FLOAT blackRGBA[4] = {0.0f, 0.0f, 0.0f, 1.0f};
    static const FLOAT blackYUY2[4] = {0.0f, 0.5f, 0.0f, 0.5f};
    static const FLOAT blackVUYA[4] = {0.5f, 0.5f, 0.0f, 1.0f};

    static_assert(D3D11_MAX_RENDER_TARGET >= 2, "we need at least 2 RenderTargetView for NV12/P010");

    switch (cfg->formatTexture)
    {
    case 132:
    case 131:
        ID3D11DeviceContext_ClearRenderTargetView( d3d_dev->d3dcontext, targets[0], blackY);
        ID3D11DeviceContext_ClearRenderTargetView( d3d_dev->d3dcontext, targets[1], blackUV);
        break;
    case 129:
    case 134:
    case 133:
    case 130:
    case 135:
        ID3D11DeviceContext_ClearRenderTargetView( d3d_dev->d3dcontext, targets[0], blackRGBA);
        break;
    case 128:
        ID3D11DeviceContext_ClearRenderTargetView( d3d_dev->d3dcontext, targets[0], blackYUY2);
        break;
    case 136:
        ID3D11DeviceContext_ClearRenderTargetView( d3d_dev->d3dcontext, targets[0], blackVUYA);
        break;
    default:
        vlc_assert_unreachable();
    }
}
