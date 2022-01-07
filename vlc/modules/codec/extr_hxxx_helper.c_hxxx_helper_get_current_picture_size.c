
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hxxx_helper_nal {scalar_t__ hevc_sps; int h264_sps; } ;
struct TYPE_2__ {size_t i_current_sps; struct hxxx_helper_nal* sps_list; } ;
struct hxxx_helper {scalar_t__ i_codec; TYPE_1__ hevc; } ;


 scalar_t__ VLC_CODEC_H264 ;
 scalar_t__ VLC_CODEC_HEVC ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ h264_get_picture_size (int ,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 struct hxxx_helper_nal* h264_helper_get_current_sps (struct hxxx_helper const*) ;
 scalar_t__ hevc_get_picture_size (scalar_t__,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;

int
hxxx_helper_get_current_picture_size(const struct hxxx_helper *hh,
                                     unsigned *p_w, unsigned *p_h,
                                     unsigned *p_vw, unsigned *p_vh)
{
    if(hh->i_codec == VLC_CODEC_H264)
    {
        const struct hxxx_helper_nal *hsps = h264_helper_get_current_sps(hh);
        if (hsps && h264_get_picture_size(hsps->h264_sps, p_w, p_h, p_vw, p_vh))
               return VLC_SUCCESS;
    }
    else if(hh->i_codec == VLC_CODEC_HEVC)
    {
        const struct hxxx_helper_nal *hsps = &hh->hevc.sps_list[hh->hevc.i_current_sps];
        if(hsps && hsps->hevc_sps && hevc_get_picture_size(hsps->hevc_sps, p_w, p_h, p_vw, p_vh))
            return VLC_SUCCESS;
    }
    return VLC_EGENERIC;
}
