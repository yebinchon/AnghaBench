
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct hxxx_helper_nal {scalar_t__ hevc_sps; TYPE_2__* h264_sps; } ;
struct TYPE_3__ {size_t i_current_sps; struct hxxx_helper_nal* sps_list; } ;
struct hxxx_helper {scalar_t__ i_codec; TYPE_1__ hevc; } ;
struct TYPE_4__ {int i_level; int i_profile; } ;


 scalar_t__ VLC_CODEC_H264 ;
 scalar_t__ VLC_CODEC_HEVC ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 struct hxxx_helper_nal* h264_helper_get_current_sps (struct hxxx_helper const*) ;
 scalar_t__ hevc_get_sps_profile_tier_level (scalar_t__,int *,int *) ;

int
hxxx_helper_get_current_profile_level(const struct hxxx_helper *hh,
                                      uint8_t *p_profile, uint8_t *p_level)
{
    if(hh->i_codec == VLC_CODEC_H264)
    {
        const struct hxxx_helper_nal *hsps = h264_helper_get_current_sps(hh);
        if (hsps)
        {
            *p_profile = hsps->h264_sps->i_profile;
            *p_level = hsps->h264_sps->i_level;
            return VLC_SUCCESS;
        }
    }
    else if(hh->i_codec == VLC_CODEC_HEVC)
    {
        const struct hxxx_helper_nal *hsps = &hh->hevc.sps_list[hh->hevc.i_current_sps];
        if (hsps && hsps->hevc_sps &&
            hevc_get_sps_profile_tier_level(hsps->hevc_sps, p_profile, p_level))
            return VLC_SUCCESS;
    }
    return VLC_EGENERIC;
}
