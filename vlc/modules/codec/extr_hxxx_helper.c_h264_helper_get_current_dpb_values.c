
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct hxxx_helper_nal {int h264_sps; } ;
struct hxxx_helper {int dummy; } ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ h264_get_dpb_values (int ,int *,unsigned int*) ;
 struct hxxx_helper_nal* h264_helper_get_current_sps (struct hxxx_helper const*) ;

int
h264_helper_get_current_dpb_values(const struct hxxx_helper *hh,
                                   uint8_t *p_depth, unsigned *p_delay)
{
    const struct hxxx_helper_nal *hsps = h264_helper_get_current_sps(hh);
    if (hsps == ((void*)0))
        return VLC_EGENERIC;
    return h264_get_dpb_values(hsps->h264_sps, p_depth, p_delay) ?
           VLC_SUCCESS : VLC_EGENERIC;
}
