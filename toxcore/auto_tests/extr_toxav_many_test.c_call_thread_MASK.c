#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_y ;
typedef  int /*<<< orphan*/  video_v ;
typedef  int /*<<< orphan*/  video_u ;
struct TYPE_10__ {int /*<<< orphan*/  incoming; } ;
typedef  TYPE_1__ uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int time_t ;
struct TYPE_11__ {int /*<<< orphan*/  friend_number; TYPE_1__* BobCC; TYPE_1__* AliceCC; int /*<<< orphan*/ * BobAV; int /*<<< orphan*/ * AliceAV; } ;
typedef  TYPE_2__ thread_data ;
typedef  TYPE_1__ int16_t ;
typedef  int /*<<< orphan*/  ToxAV ;
typedef  scalar_t__ TOXAV_ERR_CALL_CONTROL ;
typedef  scalar_t__ TOXAV_ERR_CALL ;
typedef  scalar_t__ TOXAV_ERR_ANSWER ;
typedef  int /*<<< orphan*/  PCM ;
typedef  TYPE_1__ CallControl ;

/* Variables and functions */
 int /*<<< orphan*/  TOXAV_CALL_CONTROL_CANCEL ; 
 scalar_t__ TOXAV_ERR_ANSWER_OK ; 
 scalar_t__ TOXAV_ERR_CALL_CONTROL_OK ; 
 scalar_t__ TOXAV_ERR_CALL_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,TYPE_1__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 

void *FUNC12(void *pd)
{
    ToxAV *AliceAV = ((thread_data *) pd)->AliceAV;
    ToxAV *BobAV = ((thread_data *) pd)->BobAV;
    CallControl *AliceCC = ((thread_data *) pd)->AliceCC;
    CallControl *BobCC = ((thread_data *) pd)->BobCC;
    uint32_t friend_number = ((thread_data *) pd)->friend_number;


    FUNC2(AliceCC, 0, sizeof(CallControl));
    FUNC2(BobCC, 0, sizeof(CallControl));

    { /* Call */
        TOXAV_ERR_CALL rc;
        FUNC8(AliceAV, friend_number, 48, 3000, &rc);

        if (rc != TOXAV_ERR_CALL_OK) {
            FUNC3("toxav_call failed: %d\n", rc);
            FUNC1(0);
        }
    }

    while (!BobCC->incoming)
        FUNC0(10);

    { /* Answer */
        TOXAV_ERR_ANSWER rc;
        FUNC6(BobAV, 0, 8, 500, &rc);

        if (rc != TOXAV_ERR_ANSWER_OK) {
            FUNC3("toxav_answer failed: %d\n", rc);
            FUNC1(0);
        }
    }

    FUNC0(30);

    int16_t PCM[960];
    uint8_t video_y[800 * 600];
    uint8_t video_u[800 * 600 / 2];
    uint8_t video_v[800 * 600 / 2];

    FUNC2(PCM, 0, sizeof(PCM));
    FUNC2(video_y, 0, sizeof(video_y));
    FUNC2(video_u, 0, sizeof(video_u));
    FUNC2(video_v, 0, sizeof(video_v));

    time_t start_time = FUNC5(NULL);

    while (FUNC5(NULL) - start_time < 4) {
        FUNC10(AliceAV);
        FUNC10(BobAV);

        FUNC7(AliceAV, friend_number, PCM, 960, 1, 48000, NULL);
        FUNC7(BobAV, 0, PCM, 960, 1, 48000, NULL);

        FUNC11(AliceAV, friend_number, 800, 600, video_y, video_u, video_v, NULL);
        FUNC11(BobAV, 0, 800, 600, video_y, video_u, video_v, NULL);

        FUNC0(10);
    }

    { /* Hangup */
        TOXAV_ERR_CALL_CONTROL rc;
        FUNC9(AliceAV, friend_number, TOXAV_CALL_CONTROL_CANCEL, &rc);

        if (rc != TOXAV_ERR_CALL_CONTROL_OK) {
            FUNC3("toxav_call_control failed: %d %p %p\n", rc, AliceAV, BobAV);
        }
    }

    FUNC0(30);

    FUNC3 ("Closing thread\n");
    FUNC4(NULL);
}