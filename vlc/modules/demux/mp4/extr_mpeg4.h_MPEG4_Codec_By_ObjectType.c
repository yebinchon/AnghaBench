
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_fourcc_t ;
typedef int uint8_t ;


 int PROFILE_DTS_EXPRESS ;
 int PROFILE_DTS_HD ;
 int VLC_CODEC_A52 ;
 int VLC_CODEC_ALS ;
 int VLC_CODEC_DIRAC ;
 int VLC_CODEC_DTS ;
 int VLC_CODEC_EAC3 ;
 int VLC_CODEC_H264 ;
 int VLC_CODEC_JPEG ;
 int VLC_CODEC_MP4A ;
 int VLC_CODEC_MP4V ;
 int VLC_CODEC_MPGA ;
 int VLC_CODEC_MPGV ;
 int VLC_CODEC_PNG ;
 int VLC_CODEC_VC1 ;
 int VLC_CODEC_VORBIS ;
 int VLC_FOURCC (char,char,char,char) ;

__attribute__((used)) static inline bool MPEG4_Codec_By_ObjectType(uint8_t oti,
                                              const uint8_t *p_dsi,
                                              size_t i_dsi,
                                              vlc_fourcc_t *pi_codec,
                                              int *pi_profile)
{

    switch(oti)
    {
        case 0x20:
            *pi_codec = VLC_CODEC_MP4V;
            break;
        case 0x21:
            *pi_codec = VLC_CODEC_H264;
            break;
        case 0x40:
        case 0x41:
            *pi_codec = VLC_CODEC_MP4A;
            if(i_dsi >= 2 && p_dsi[0] == 0xF8 && (p_dsi[1]&0xE0)== 0x80)
                *pi_codec = VLC_CODEC_ALS;
            break;
        case 0x60:
        case 0x61:
        case 0x62:
        case 0x63:
        case 0x64:
        case 0x65:
            *pi_codec = VLC_CODEC_MPGV;
            break;

        case 0x66:
        case 0x67:
        case 0x68:
            *pi_codec = VLC_CODEC_MP4A;
            break;

        case 0x69:
            *pi_codec = VLC_CODEC_MPGA;
            break;
        case 0x6a:
            *pi_codec = VLC_CODEC_MPGV;
            break;
        case 0x6b:
            *pi_codec = VLC_CODEC_MPGA;
            break;
        case 0x6c:
            *pi_codec = VLC_CODEC_JPEG;
            break;
        case 0x6d:
            *pi_codec = VLC_CODEC_PNG;
            break;
        case 0x6e:
            *pi_codec = VLC_FOURCC('M','J','2','C');
            break;
        case 0xa3:
            *pi_codec = VLC_CODEC_VC1;
            break;
        case 0xa4:
            *pi_codec = VLC_CODEC_DIRAC;
            break;
        case 0xa5:
            *pi_codec = VLC_CODEC_A52;
            break;
        case 0xa6:
            *pi_codec = VLC_CODEC_EAC3;
            break;
        case 0xa9:
            *pi_codec = VLC_CODEC_DTS;
            break;
        case 0xaa:
        case 0xab:
            *pi_profile = PROFILE_DTS_HD;
            *pi_codec = VLC_CODEC_DTS;
            break;
        case 0xac:
            *pi_profile = PROFILE_DTS_EXPRESS;
            *pi_codec = VLC_CODEC_DTS;
            break;
        case 0xDD:
            *pi_codec = VLC_CODEC_VORBIS;
            break;
        default:
            return 0;
    }
    return 1;
}
