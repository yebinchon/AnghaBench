#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct params_s {int i_rate_num; int i_rate_den; int i_frame_count; int b_extra; int i_read_size; int /*<<< orphan*/  codec; int /*<<< orphan*/  obj; TYPE_1__* vlc; } ;
struct TYPE_4__ {int /*<<< orphan*/  p_libvlc_int; } ;
typedef  TYPE_1__ libvlc_instance_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VLC_CODEC_H264 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  test_packetize ; 
 scalar_t__ test_samples_raw_h264 ; 
 scalar_t__ test_samples_raw_h264_len ; 

int FUNC5(void)
{
    FUNC4();

    libvlc_instance_t *vlc = FUNC2(0, NULL);
    if(!vlc)
        return 1;

    struct params_s params;
    params.vlc = vlc;
    params.obj = FUNC1(vlc->p_libvlc_int);
    params.codec = VLC_CODEC_H264;
    params.i_rate_num = 0;
    params.i_rate_den = 0;
    params.i_frame_count = 2*25;
    params.b_extra = true;

    params.i_read_size = 500;
    FUNC0("block 500", test_packetize,
        test_samples_raw_h264, test_samples_raw_h264_len, 0);

    params.i_rate_num = 60000;
    params.i_rate_den = 1001;
    params.i_read_size = 8;
    FUNC0("block 8", test_packetize,
        test_samples_raw_h264, test_samples_raw_h264_len, 0);

    params.i_frame_count = 1*25;
    params.i_read_size = 500;
    FUNC0("skip 1st Iframe", test_packetize,
        test_samples_raw_h264 + 10, test_samples_raw_h264_len - 10, 0);

    FUNC3(vlc);
    return 0;
}