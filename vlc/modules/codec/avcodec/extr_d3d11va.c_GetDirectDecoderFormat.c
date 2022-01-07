
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* sys; } ;
typedef TYPE_2__ vlc_va_t ;
typedef int vlc_fourcc_t ;
typedef int d3d_format_t ;
typedef int UINT ;
struct TYPE_5__ {int d3d_dev; } ;


 int D3D11_FORMAT_SUPPORT_DECODER_OUTPUT ;
 int const* FindD3D11Format (TYPE_2__*,int *,int ,int,int ,int ,int ,int,int ) ;

__attribute__((used)) static const d3d_format_t *GetDirectDecoderFormat(vlc_va_t *vd, vlc_fourcc_t i_src_chroma)
{
    UINT supportFlags = D3D11_FORMAT_SUPPORT_DECODER_OUTPUT;
    return FindD3D11Format( vd, &vd->sys->d3d_dev, i_src_chroma, 0, 0, 0, 0, 1, supportFlags );
}
