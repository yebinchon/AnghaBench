
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_transfer_func_t ;
typedef int video_color_space_t ;
typedef int video_color_range_t ;
typedef int video_color_primaries_t ;
struct hxxx_helper_nal {int * hevc_sps; int h264_sps; } ;
struct TYPE_2__ {size_t i_current_sps; struct hxxx_helper_nal* sps_list; } ;
struct hxxx_helper {int i_codec; TYPE_1__ hevc; } ;




 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int h264_get_colorimetry (int ,int *,int *,int *,int *) ;
 struct hxxx_helper_nal* h264_helper_get_current_sps (struct hxxx_helper const*) ;
 int hevc_get_colorimetry (int *,int *,int *,int *,int *) ;
 int vlc_assert_unreachable () ;

int
hxxx_helper_get_colorimetry(const struct hxxx_helper *hh,
                            video_color_primaries_t *p_primaries,
                            video_transfer_func_t *p_transfer,
                            video_color_space_t *p_colorspace,
                            video_color_range_t *p_full_range)
{
    switch (hh->i_codec)
    {
        case 129:
        {
            const struct hxxx_helper_nal *hsps = h264_helper_get_current_sps(hh);
            if (hsps == ((void*)0))
                return VLC_EGENERIC;
            return h264_get_colorimetry(hsps->h264_sps, p_primaries, p_transfer,
                                        p_colorspace, p_full_range)
                == 1 ? VLC_SUCCESS : VLC_EGENERIC;
        }
        case 128:
        {
            const struct hxxx_helper_nal *hsps = &hh->hevc.sps_list[hh->hevc.i_current_sps];
            if (hsps == ((void*)0) || hsps->hevc_sps == ((void*)0))
                return VLC_EGENERIC;

            return hevc_get_colorimetry(hsps->hevc_sps, p_primaries, p_transfer,
                                        p_colorspace, p_full_range)
                == 1 ? VLC_SUCCESS : VLC_EGENERIC;
        }
        default:
            vlc_assert_unreachable();
    }
}
