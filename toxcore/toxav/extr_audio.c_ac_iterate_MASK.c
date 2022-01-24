#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct RTPMessage {scalar_t__ len; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_5__ {int /*<<< orphan*/  second; int /*<<< orphan*/  (* first ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {int lp_sampling_rate; int lp_frame_duration; int /*<<< orphan*/  queue_mutex; TYPE_1__ acb; int /*<<< orphan*/  lp_channel_count; int /*<<< orphan*/  friend_number; int /*<<< orphan*/  av; int /*<<< orphan*/  decoder; int /*<<< orphan*/  j_buf; } ;
typedef  TYPE_2__ ACSession ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct RTPMessage*) ; 
 struct RTPMessage* FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC13(ACSession *ac)
{
    if (!ac)
        return;

    /* TODO fix this and jitter buffering */

    /* Enough space for the maximum frame size (120 ms 48 KHz stereo audio) */
    int16_t tmp[5760 * 2];

    struct RTPMessage *msg;
    int rc = 0;

    FUNC9(ac->queue_mutex);

    while ((msg = FUNC3(ac->j_buf, &rc)) || rc == 2) {
        FUNC10(ac->queue_mutex);

        if (rc == 2) {
            FUNC0("OPUS correction");
            int fs = (ac->lp_sampling_rate * ac->lp_frame_duration) / 1000;
            rc = FUNC6(ac->decoder, NULL, 0, tmp, fs, 1);
        } else {
            /* Get values from packet and decode. */
            /* NOTE: This didn't work very well
            rc = convert_bw_to_sampling_rate(opus_packet_get_bandwidth(msg->data));
            if (rc != -1) {
                cs->last_packet_sampling_rate = rc;
            } else {
                LOGGER_WARNING("Failed to load packet values!");
                rtp_free_msg(msg);
                continue;
            }*/


            /* Pick up sampling rate from packet */
            FUNC4(&ac->lp_sampling_rate, msg->data, 4);
            ac->lp_sampling_rate = FUNC5(ac->lp_sampling_rate);

            ac->lp_channel_count = FUNC7(msg->data + 4);

            /** NOTE: even though OPUS supports decoding mono frames with stereo decoder and vice versa,
              * it didn't work quite well.
              */
            if (!FUNC11(ac, ac->lp_sampling_rate, ac->lp_channel_count)) {
                FUNC1("Failed to reconfigure decoder!");
                FUNC2(msg);
                continue;
            }

            rc = FUNC6(ac->decoder, msg->data + 4, msg->len - 4, tmp, 5760, 0);
            FUNC2(msg);
        }

        if (rc < 0) {
            FUNC1("Decoding error: %s", FUNC8(rc));
        } else if (ac->acb.first) {
            ac->lp_frame_duration = (rc * 1000) / ac->lp_sampling_rate;

            ac->acb.first(ac->av, ac->friend_number, tmp, rc, ac->lp_channel_count,
                          ac->lp_sampling_rate, ac->acb.second);
        }

        return;
    }

    FUNC10(ac->queue_mutex);
}