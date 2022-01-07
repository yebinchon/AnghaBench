
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_fourcc_t ;
typedef int VdpYCbCrFormat ;
typedef int VdpChromaType ;


 int VDP_CHROMA_TYPE_420 ;
 int VDP_CHROMA_TYPE_422 ;
 int VDP_CHROMA_TYPE_444 ;
 int VDP_YCBCR_FORMAT_NV12 ;
 int VDP_YCBCR_FORMAT_UYVY ;
 int VDP_YCBCR_FORMAT_YUYV ;
 int VDP_YCBCR_FORMAT_YV12 ;
__attribute__((used)) static inline
bool vlc_fourcc_to_vdp_ycc(vlc_fourcc_t fourcc,
                 VdpChromaType *restrict type, VdpYCbCrFormat *restrict format)
{
    switch (fourcc)
    {
        case 136:
        case 128:
            *type = VDP_CHROMA_TYPE_420;
            *format = VDP_YCBCR_FORMAT_YV12;
            break;
        case 133:
            *type = VDP_CHROMA_TYPE_420;
            *format = VDP_YCBCR_FORMAT_NV12;
            break;
        case 135:
            *type = VDP_CHROMA_TYPE_422;
            *format = VDP_YCBCR_FORMAT_YV12;
            break;
        case 132:
            *type = VDP_CHROMA_TYPE_422;
            *format = VDP_YCBCR_FORMAT_NV12;
            break;
        case 129:
            *type = VDP_CHROMA_TYPE_422;
            *format = VDP_YCBCR_FORMAT_YUYV;
            break;
        case 130:
            *type = VDP_CHROMA_TYPE_422;
            *format = VDP_YCBCR_FORMAT_UYVY;
            break;
        case 134:
            *type = VDP_CHROMA_TYPE_444;
            *format = VDP_YCBCR_FORMAT_YV12;
            break;
        case 131:
            *type = VDP_CHROMA_TYPE_444;
            *format = VDP_YCBCR_FORMAT_NV12;
            break;
        default:
            return 0;
    }
    return 1;
}
