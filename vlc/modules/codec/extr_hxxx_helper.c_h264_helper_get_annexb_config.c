
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hxxx_helper_nal {int dummy; } ;
struct TYPE_2__ {scalar_t__ i_sps_count; scalar_t__ i_pps_count; struct hxxx_helper_nal const* pps_list; struct hxxx_helper_nal const* sps_list; } ;
struct hxxx_helper {TYPE_1__ h264; } ;
typedef int block_t ;


 int H264_PPS_ID_MAX ;
 int H264_SPS_ID_MAX ;
 int * hxxx_helper_get_annexb_config (struct hxxx_helper_nal const**,size_t const*,size_t const*,int) ;

block_t *
h264_helper_get_annexb_config(const struct hxxx_helper *hh)
{
    if (hh->h264.i_sps_count == 0 || hh->h264.i_pps_count == 0)
        return ((void*)0);

    const struct hxxx_helper_nal *pp_nal_lists[] = {
        hh->h264.sps_list, hh->h264.pps_list };
    const size_t p_nal_counts[] = { hh->h264.i_sps_count, hh->h264.i_pps_count };
    const size_t p_nal_maxs[] = { H264_SPS_ID_MAX+1, H264_PPS_ID_MAX+1 };

    return hxxx_helper_get_annexb_config( pp_nal_lists, p_nal_counts, p_nal_maxs, 2 );
}
