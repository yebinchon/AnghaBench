#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {int video_bit_rate; int audio_bit_rate; TYPE_3__* av; } ;
typedef  TYPE_2__ ToxAVCall ;
struct TYPE_6__ {int /*<<< orphan*/  second; int /*<<< orphan*/  (* first ) (TYPE_3__*,int /*<<< orphan*/ ,float,float,int /*<<< orphan*/ ) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  mutex; TYPE_1__ bcb; } ;
typedef  int /*<<< orphan*/  BWController ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,float) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,float,float,int /*<<< orphan*/ ) ; 

void FUNC7(BWController *bwc, uint32_t friend_number, float loss, void *user_data)
{
    /* Callback which is called when the internal measure mechanism reported packet loss.
     * We report suggested lowered bitrate to an app. If app is sending both audio and video,
     * we will report lowered bitrate for video only because in that case video probably
     * takes more than 90% bandwidth. Otherwise, we report lowered bitrate on audio.
     * The application may choose to disable video totally if the stream is too bad.
     */

    ToxAVCall *call = user_data;
    FUNC2(call);

    FUNC0("Reported loss of %f%%", loss * 100);

    if (loss < .01f)
        return;

    FUNC3(call->av->mutex);

    if (!call->av->bcb.first) {
        FUNC4(call->av->mutex);
        FUNC1("No callback to report loss on");
        return;
    }

    if (call->video_bit_rate)
        (*call->av->bcb.first) (call->av, friend_number, call->audio_bit_rate,
                                call->video_bit_rate - (call->video_bit_rate * loss),
                                call->av->bcb.second);
    else if (call->audio_bit_rate)
        (*call->av->bcb.first) (call->av, friend_number,
                                call->audio_bit_rate - (call->audio_bit_rate * loss),
                                0, call->av->bcb.second);

    FUNC4(call->av->mutex);
}