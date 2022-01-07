
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_fourcc_t ;
typedef enum PixelFormat { ____Placeholder_PixelFormat } PixelFormat ;
 int VLC_CODEC_D3D11_OPAQUE ;
 int VLC_CODEC_D3D11_OPAQUE_10B ;
 int VLC_CODEC_D3D9_OPAQUE ;
 int VLC_CODEC_D3D9_OPAQUE_10B ;
 int VLC_CODEC_VAAPI_420 ;
 int VLC_CODEC_VAAPI_420_10BPP ;
 int VLC_CODEC_VDPAU_VIDEO_420 ;
 int VLC_CODEC_VDPAU_VIDEO_422 ;
 int VLC_CODEC_VDPAU_VIDEO_444 ;

vlc_fourcc_t vlc_va_GetChroma(enum PixelFormat hwfmt, enum PixelFormat swfmt)
{



    switch (hwfmt)
    {
        case 136:
            switch (swfmt)
            {
                case 130:
                case 134:
                    return VLC_CODEC_VAAPI_420;
                case 133:
                    return VLC_CODEC_VAAPI_420_10BPP;
                default:
                    return 0;
            }
        case 137:
            switch (swfmt)
            {
                case 133:
                    return VLC_CODEC_D3D9_OPAQUE_10B;
                case 130:
                case 134:
                    return VLC_CODEC_D3D9_OPAQUE;
                default:
                    return 0;
            }
            break;

        case 138:
            switch (swfmt)
            {
                case 133:
                    return VLC_CODEC_D3D11_OPAQUE_10B;
                case 130:
                case 134:
                    return VLC_CODEC_D3D11_OPAQUE;
                default:
                    return 0;
            }
        break;

        case 135:
            switch (swfmt)
            {
                case 128:
                case 131:
                    return VLC_CODEC_VDPAU_VIDEO_444;
                case 129:
                case 132:
                    return VLC_CODEC_VDPAU_VIDEO_422;
                case 130:
                case 134:
                    return VLC_CODEC_VDPAU_VIDEO_420;
                default:
                    return 0;
            }
            break;
        default:
            return 0;
    }
}
