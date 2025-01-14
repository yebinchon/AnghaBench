
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vlc_fourcc_t ;


 scalar_t__ VLC_CODEC_D3D11_OPAQUE ;
 scalar_t__ VLC_CODEC_D3D11_OPAQUE_10B ;
 scalar_t__ VLC_CODEC_D3D11_OPAQUE_BGRA ;
 scalar_t__ VLC_CODEC_D3D11_OPAQUE_RGBA ;

__attribute__((used)) static inline bool is_d3d11_opaque(vlc_fourcc_t chroma)
{
    return chroma == VLC_CODEC_D3D11_OPAQUE ||
           chroma == VLC_CODEC_D3D11_OPAQUE_10B ||
           chroma == VLC_CODEC_D3D11_OPAQUE_RGBA ||
           chroma == VLC_CODEC_D3D11_OPAQUE_BGRA;
}
