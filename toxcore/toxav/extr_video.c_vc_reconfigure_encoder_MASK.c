#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ rc_target_bitrate; scalar_t__ g_w; scalar_t__ g_h; } ;
typedef  TYPE_2__ vpx_codec_enc_cfg_t ;
struct TYPE_15__ {TYPE_2__* enc; } ;
struct TYPE_17__ {TYPE_1__ config; } ;
typedef  TYPE_3__ vpx_codec_ctx_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  new_c ;
struct TYPE_18__ {TYPE_3__* encoder; } ;
typedef  TYPE_4__ VCSession ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIDEO_CODEC_ENCODER_INTERFACE ; 
 int /*<<< orphan*/  VP8E_SET_CPUUSED ; 
 int VPX_CODEC_OK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_3__*,int) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_3__*,TYPE_2__*) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

int FUNC8(VCSession *vc, uint32_t bit_rate, uint16_t width, uint16_t height)
{
    if (!vc)
        return -1;

    vpx_codec_enc_cfg_t cfg = *vc->encoder->config.enc;
    int rc;

    if (cfg.rc_target_bitrate == bit_rate && cfg.g_w == width && cfg.g_h == height)
        return 0; /* Nothing changed */

    if (cfg.g_w == width && cfg.g_h == height) {
        /* Only bit rate changed */
        cfg.rc_target_bitrate = bit_rate;

        rc = FUNC5(vc->encoder, &cfg);

        if (rc != VPX_CODEC_OK) {
            FUNC1("Failed to set encoder control setting: %s", FUNC7(rc));
            return -1;
        }
    } else {
        /* Resolution is changed, must reinitialize encoder since libvpx v1.4 doesn't support
         * reconfiguring encoder to use resolutions greater than initially set.
         */

        FUNC0("Have to reinitialize vpx encoder on session %p", vc);

        cfg.rc_target_bitrate = bit_rate;
        cfg.g_w = width;
        cfg.g_h = height;

        vpx_codec_ctx_t new_c;

        rc = FUNC6(&new_c, VIDEO_CODEC_ENCODER_INTERFACE, &cfg, 0);

        if (rc != VPX_CODEC_OK) {
            FUNC1("Failed to initialize encoder: %s", FUNC7(rc));
            return -1;
        }

        rc = FUNC3(&new_c, VP8E_SET_CPUUSED, 8);

        if (rc != VPX_CODEC_OK) {
            FUNC1("Failed to set encoder control setting: %s", FUNC7(rc));
            FUNC4(&new_c);
            return -1;
        }

        FUNC4(vc->encoder);
        FUNC2(vc->encoder, &new_c, sizeof(new_c));
    }

    return 0;
}