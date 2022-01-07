
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vlc_fourcc_t ;


 scalar_t__ VLC_CODEC_NVDEC_OPAQUE ;
 scalar_t__ VLC_CODEC_NVDEC_OPAQUE_10B ;
 scalar_t__ VLC_CODEC_NVDEC_OPAQUE_16B ;

__attribute__((used)) static inline bool is_nvdec_opaque(vlc_fourcc_t fourcc)
{
    return fourcc == VLC_CODEC_NVDEC_OPAQUE ||
           fourcc == VLC_CODEC_NVDEC_OPAQUE_10B ||
           fourcc == VLC_CODEC_NVDEC_OPAQUE_16B;
}
