
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ color_range; int space; int primaries; int transfer; } ;
typedef TYPE_1__ video_format_t ;
struct TYPE_6__ {int VideoLighting; int VideoTransferFunction; int VideoPrimaries; int VideoTransferMatrix; int NominalRange; } ;
typedef TYPE_2__ DXVA2_ExtendedFormat ;





 scalar_t__ COLOR_RANGE_FULL ;


 int DXVA2_NominalRange_0_255 ;
 int DXVA2_NominalRange_16_235 ;
 int DXVA2_VideoLighting_Unknown ;
 int DXVA2_VideoLighting_dim ;
 int DXVA2_VideoPrimaries_BT470_2_SysBG ;
 int DXVA2_VideoPrimaries_BT709 ;
 int DXVA2_VideoPrimaries_SMPTE170M ;
 int DXVA2_VideoPrimaries_Unknown ;
 int DXVA2_VideoTransFunc_240M ;
 int DXVA2_VideoTransFunc_709 ;
 int DXVA2_VideoTransFunc_Unknown ;
 int DXVA2_VideoTransFunc_sRGB ;
 int DXVA2_VideoTransferMatrix_BT601 ;
 int DXVA2_VideoTransferMatrix_BT709 ;
 int DXVA2_VideoTransferMatrix_Unknown ;




__attribute__((used)) static void FillExtendedFormat( const video_format_t *p_fmt,
                                DXVA2_ExtendedFormat *out )
{
    out->NominalRange = p_fmt->color_range == COLOR_RANGE_FULL ?
                DXVA2_NominalRange_0_255 : DXVA2_NominalRange_16_235;
    switch (p_fmt->space)
    {
    case 132:
        out->VideoTransferMatrix = DXVA2_VideoTransferMatrix_BT601;
        break;
    case 131:
        out->VideoTransferMatrix = DXVA2_VideoTransferMatrix_BT709;
        break;
    default:
        out->VideoTransferMatrix = DXVA2_VideoTransferMatrix_Unknown;
        break;
    }
    out->VideoLighting = DXVA2_VideoLighting_Unknown;
    switch (p_fmt->primaries)
    {
    case 134:
        out->VideoPrimaries = DXVA2_VideoPrimaries_BT709;
        break;
    case 135:
        out->VideoPrimaries = DXVA2_VideoPrimaries_BT470_2_SysBG;
        break;
    case 133:
        out->VideoPrimaries = DXVA2_VideoPrimaries_SMPTE170M;
        break;
    default:
        out->VideoPrimaries = DXVA2_VideoPrimaries_Unknown;
        break;
    }
    switch (p_fmt->transfer)
    {
    case 130:
        out->VideoTransferFunction = DXVA2_VideoTransFunc_709;
        break;
    case 129:
        out->VideoTransferFunction = DXVA2_VideoTransFunc_240M;
        break;
    case 128:
        out->VideoTransferFunction = DXVA2_VideoTransFunc_sRGB;
        break;
    default:
        out->VideoTransferFunction = DXVA2_VideoTransFunc_Unknown;
        break;
    }
    out->VideoLighting = DXVA2_VideoLighting_dim;
}
