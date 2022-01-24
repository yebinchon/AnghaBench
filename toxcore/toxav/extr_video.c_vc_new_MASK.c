#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int rc_target_bitrate; int g_w; int g_h; int kf_max_dist; int /*<<< orphan*/  kf_mode; scalar_t__ kf_min_dist; scalar_t__ g_lag_in_frames; int /*<<< orphan*/  g_pass; } ;
typedef  TYPE_2__ vpx_codec_enc_cfg_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  toxav_video_receive_frame_cb ;
struct TYPE_9__ {void* second; int /*<<< orphan*/ * first; } ;
struct TYPE_11__ {int lcfd; int /*<<< orphan*/  vbuf_raw; int /*<<< orphan*/  queue_mutex; int /*<<< orphan*/  decoder; int /*<<< orphan*/ * av; int /*<<< orphan*/  friend_number; TYPE_1__ vcb; int /*<<< orphan*/  linfts; int /*<<< orphan*/  encoder; } ;
typedef  TYPE_3__ VCSession ;
typedef  int /*<<< orphan*/  ToxAV ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  VIDEO_CODEC_DECODER_INTERFACE ; 
 int /*<<< orphan*/  VIDEO_CODEC_ENCODER_INTERFACE ; 
 int /*<<< orphan*/  VIDEO_DECODE_BUFFER_SIZE ; 
 int /*<<< orphan*/  VP8E_SET_CPUUSED ; 
 int VPX_CODEC_OK ; 
 int /*<<< orphan*/  VPX_KF_AUTO ; 
 int /*<<< orphan*/  VPX_RC_ONE_PASS ; 
 TYPE_3__* FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

VCSession *FUNC15(ToxAV *av, uint32_t friend_number, toxav_video_receive_frame_cb *cb, void *cb_data)
{
    VCSession *vc = FUNC2(sizeof(VCSession), 1);

    if (!vc) {
        FUNC1("Allocation failed! Application might misbehave!");
        return NULL;
    }

    if (FUNC3(vc->queue_mutex) != 0) {
        FUNC1("Failed to create recursive mutex!");
        FUNC5(vc);
        return NULL;
    }

    if (!(vc->vbuf_raw = FUNC8(VIDEO_DECODE_BUFFER_SIZE)))
        goto BASE_CLEANUP;

    int rc = FUNC10(vc->decoder, VIDEO_CODEC_DECODER_INTERFACE, NULL, 0);

    if (rc != VPX_CODEC_OK) {
        FUNC0("Init video_decoder failed: %s", FUNC14(rc));
        goto BASE_CLEANUP;
    }

    /* Set encoder to some initial values
     */
    vpx_codec_enc_cfg_t  cfg;
    rc = FUNC12(VIDEO_CODEC_ENCODER_INTERFACE, &cfg, 0);

    if (rc != VPX_CODEC_OK) {
        FUNC0("Failed to get config: %s", FUNC14(rc));
        goto BASE_CLEANUP_1;
    }

    cfg.rc_target_bitrate = 500000;
    cfg.g_w = 800;
    cfg.g_h = 600;
    cfg.g_pass = VPX_RC_ONE_PASS;
    /* FIXME If we set error resilience the app will crash due to bug in vp8.
             Perhaps vp9 has solved it?*/
//     cfg.g_error_resilient = VPX_ERROR_RESILIENT_DEFAULT | VPX_ERROR_RESILIENT_PARTITIONS;
    cfg.g_lag_in_frames = 0;
    cfg.kf_min_dist = 0;
    cfg.kf_max_dist = 48;
    cfg.kf_mode = VPX_KF_AUTO;

    rc = FUNC13(vc->encoder, VIDEO_CODEC_ENCODER_INTERFACE, &cfg, 0);

    if (rc != VPX_CODEC_OK) {
        FUNC0("Failed to initialize encoder: %s", FUNC14(rc));
        goto BASE_CLEANUP_1;
    }

    rc = FUNC9(vc->encoder, VP8E_SET_CPUUSED, 8);

    if (rc != VPX_CODEC_OK) {
        FUNC0("Failed to set encoder control setting: %s", FUNC14(rc));
        FUNC11(vc->encoder);
        goto BASE_CLEANUP_1;
    }

    vc->linfts = FUNC4();
    vc->lcfd = 60;
    vc->vcb.first = cb;
    vc->vcb.second = cb_data;
    vc->friend_number = friend_number;
    vc->av = av;

    return vc;

BASE_CLEANUP_1:
    FUNC11(vc->decoder);
BASE_CLEANUP:
    FUNC6(vc->queue_mutex);
    FUNC7(vc->vbuf_raw);
    FUNC5(vc);
    return NULL;
}