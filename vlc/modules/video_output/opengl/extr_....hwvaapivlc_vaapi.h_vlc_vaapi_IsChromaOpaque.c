
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VLC_CODEC_VAAPI_420 ;
 int VLC_CODEC_VAAPI_420_10BPP ;

__attribute__((used)) static inline bool
vlc_vaapi_IsChromaOpaque(int i_vlc_chroma)
{
    return i_vlc_chroma == VLC_CODEC_VAAPI_420
        || i_vlc_chroma == VLC_CODEC_VAAPI_420_10BPP;
}
