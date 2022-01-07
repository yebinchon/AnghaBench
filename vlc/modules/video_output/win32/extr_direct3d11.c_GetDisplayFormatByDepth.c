
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* sys; } ;
typedef TYPE_2__ vout_display_t ;
typedef int uint8_t ;
typedef int d3d_format_t ;
typedef int UINT ;
struct TYPE_5__ {int d3d_dev; } ;


 int D3D11_FORMAT_SUPPORT_SHADER_LOAD ;
 int D3D11_FORMAT_SUPPORT_VIDEO_PROCESSOR_OUTPUT ;
 int const* FindD3D11Format (TYPE_2__*,int *,int ,int,int ,int ,int ,int,int ) ;

__attribute__((used)) static const d3d_format_t *GetDisplayFormatByDepth(vout_display_t *vd, uint8_t bit_depth,
                                                   uint8_t widthDenominator,
                                                   uint8_t heightDenominator,
                                                   bool from_processor,
                                                   bool rgb_only)
{
    UINT supportFlags = D3D11_FORMAT_SUPPORT_SHADER_LOAD;
    if (from_processor)
        supportFlags |= D3D11_FORMAT_SUPPORT_VIDEO_PROCESSOR_OUTPUT;
    return FindD3D11Format( vd, &vd->sys->d3d_dev, 0, rgb_only,
                            bit_depth, widthDenominator, heightDenominator,
                            0, supportFlags );
}
