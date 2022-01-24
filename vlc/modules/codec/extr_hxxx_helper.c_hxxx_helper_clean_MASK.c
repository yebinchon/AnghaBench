#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hxxx_helper_nal {int /*<<< orphan*/  hevc_pps; int /*<<< orphan*/  hevc_sps; int /*<<< orphan*/  hevc_vps; int /*<<< orphan*/  h264_pps; int /*<<< orphan*/  h264_sps; } ;
struct TYPE_2__ {int /*<<< orphan*/  pps_list; int /*<<< orphan*/  sps_list; int /*<<< orphan*/  vps_list; } ;
struct hxxx_helper {int i_codec; TYPE_1__ hevc; TYPE_1__ h264; } ;

/* Variables and functions */
 int /*<<< orphan*/  H264_PPS_ID_MAX ; 
 int /*<<< orphan*/  H264_SPS_ID_MAX ; 
 int /*<<< orphan*/  HEVC_PPS_ID_MAX ; 
 int /*<<< orphan*/  HEVC_SPS_ID_MAX ; 
 int /*<<< orphan*/  HEVC_VPS_ID_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  VLC_CODEC_H264 129 
#define  VLC_CODEC_HEVC 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hxxx_helper*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void
FUNC9(struct hxxx_helper *hh)
{
    struct hxxx_helper_nal *hnal;
    switch (hh->i_codec)
    {
        case VLC_CODEC_H264:
            FUNC0(hh->h264.sps_list, H264_SPS_ID_MAX,
                         FUNC2(hnal->h264_sps));
            FUNC0(hh->h264.pps_list, H264_PPS_ID_MAX,
                         FUNC1(hnal->h264_pps));
            FUNC7(&hh->h264, 0, sizeof(hh->h264));
            break;
        case VLC_CODEC_HEVC:
            FUNC0(hh->hevc.vps_list, HEVC_VPS_ID_MAX,
                         FUNC6(hnal->hevc_vps));
            FUNC0(hh->hevc.sps_list, HEVC_SPS_ID_MAX,
                         FUNC5(hnal->hevc_sps));
            FUNC0(hh->hevc.pps_list, HEVC_PPS_ID_MAX,
                         FUNC4(hnal->hevc_pps));
            FUNC3(hh);
            FUNC7(&hh->hevc, 0, sizeof(hh->hevc));
            break;
        default:
            FUNC8();
    }
}