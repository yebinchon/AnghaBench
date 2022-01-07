
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hxxx_helper_nal {int hevc_pps; int hevc_sps; int hevc_vps; int h264_pps; int h264_sps; } ;
struct TYPE_2__ {int pps_list; int sps_list; int vps_list; } ;
struct hxxx_helper {int i_codec; TYPE_1__ hevc; TYPE_1__ h264; } ;


 int H264_PPS_ID_MAX ;
 int H264_SPS_ID_MAX ;
 int HEVC_PPS_ID_MAX ;
 int HEVC_SPS_ID_MAX ;
 int HEVC_VPS_ID_MAX ;
 int RELEASE_NALS (int ,int ,int ) ;


 int h264_release_pps (int ) ;
 int h264_release_sps (int ) ;
 int helper_clear_sei (struct hxxx_helper*) ;
 int hevc_rbsp_release_pps (int ) ;
 int hevc_rbsp_release_sps (int ) ;
 int hevc_rbsp_release_vps (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int vlc_assert_unreachable () ;

void
hxxx_helper_clean(struct hxxx_helper *hh)
{
    struct hxxx_helper_nal *hnal;
    switch (hh->i_codec)
    {
        case 129:
            RELEASE_NALS(hh->h264.sps_list, H264_SPS_ID_MAX,
                         h264_release_sps(hnal->h264_sps));
            RELEASE_NALS(hh->h264.pps_list, H264_PPS_ID_MAX,
                         h264_release_pps(hnal->h264_pps));
            memset(&hh->h264, 0, sizeof(hh->h264));
            break;
        case 128:
            RELEASE_NALS(hh->hevc.vps_list, HEVC_VPS_ID_MAX,
                         hevc_rbsp_release_vps(hnal->hevc_vps));
            RELEASE_NALS(hh->hevc.sps_list, HEVC_SPS_ID_MAX,
                         hevc_rbsp_release_sps(hnal->hevc_sps));
            RELEASE_NALS(hh->hevc.pps_list, HEVC_PPS_ID_MAX,
                         hevc_rbsp_release_pps(hnal->hevc_pps));
            helper_clear_sei(hh);
            memset(&hh->hevc, 0, sizeof(hh->hevc));
            break;
        default:
            vlc_assert_unreachable();
    }
}
