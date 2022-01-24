#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
struct Tox_Options {int ipv6_enabled; int start_port; scalar_t__ end_port; } ;
typedef  int /*<<< orphan*/  ToxAV ;
typedef  int /*<<< orphan*/  Tox ;
typedef  scalar_t__ TOX_ERR_NEW ;
typedef  scalar_t__ TOXAV_ERR_NEW ;
typedef  int /*<<< orphan*/  CallControl ;

/* Variables and functions */
 scalar_t__ TOXAV_ERR_NEW_OK ; 
 int TOX_ADDRESS_SIZE ; 
 scalar_t__ TOX_CONNECTION_UDP ; 
 scalar_t__ TOX_ERR_NEW_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  t_accept_friend_request_cb ; 
 int /*<<< orphan*/  t_toxav_bit_rate_status_cb ; 
 int /*<<< orphan*/  t_toxav_call_cb ; 
 int /*<<< orphan*/  t_toxav_call_state_cb ; 
 int /*<<< orphan*/  t_toxav_receive_audio_frame_cb ; 
 int /*<<< orphan*/  t_toxav_receive_video_frame_cb ; 
 unsigned long long FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int*,int*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (struct Tox_Options*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (struct Tox_Options*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,scalar_t__*) ; 

void FUNC18(Tox **bootstrap, ToxAV **AliceAV, CallControl *AliceCC, ToxAV **BobAV, CallControl *BobCC)
{
    Tox *Alice;
    Tox *Bob;

    struct Tox_Options opts;
    FUNC9(&opts);

    opts.end_port = 0;
    opts.ipv6_enabled = false;

    {
        TOX_ERR_NEW error;

        opts.start_port = 33445;
        *bootstrap = FUNC8(&opts, &error);
        FUNC0(error == TOX_ERR_NEW_OK);

        opts.start_port = 33455;
        Alice = FUNC8(&opts, &error);
        FUNC0(error == TOX_ERR_NEW_OK);

        opts.start_port = 33465;
        Bob = FUNC8(&opts, &error);
        FUNC0(error == TOX_ERR_NEW_OK);
    }

    FUNC2("Created 3 instances of Tox\n");
    FUNC2("Preparing network...\n");
    long long unsigned int cur_time = FUNC3(NULL);

    uint32_t to_compare = 974536;
    uint8_t address[TOX_ADDRESS_SIZE];

    FUNC4(Alice, t_accept_friend_request_cb, &to_compare);
    FUNC10(Alice, address);


    FUNC0(FUNC5(Bob, address, (uint8_t *)"gentoo", 7, NULL) != (uint32_t) ~0);

    uint8_t off = 1;

    while (1) {
        FUNC7(*bootstrap);
        FUNC7(Alice);
        FUNC7(Bob);

        if (FUNC11(*bootstrap) &&
                FUNC11(Alice) &&
                FUNC11(Bob) && off) {
            FUNC2("Toxes are online, took %llu seconds\n", FUNC3(NULL) - cur_time);
            off = 0;
        }

        if (FUNC6(Alice, 0, NULL) == TOX_CONNECTION_UDP &&
                FUNC6(Bob, 0, NULL) == TOX_CONNECTION_UDP)
            break;

        FUNC1(20);
    }


    TOXAV_ERR_NEW rc;
    *AliceAV = FUNC17(Alice, &rc);
    FUNC0(rc == TOXAV_ERR_NEW_OK);

    *BobAV = FUNC17(Bob, &rc);
    FUNC0(rc == TOXAV_ERR_NEW_OK);


    /* Alice */
    FUNC14(*AliceAV, t_toxav_call_cb, AliceCC);
    FUNC15(*AliceAV, t_toxav_call_state_cb, AliceCC);
    FUNC13(*AliceAV, t_toxav_bit_rate_status_cb, AliceCC);
    FUNC16(*AliceAV, t_toxav_receive_video_frame_cb, AliceCC);
    FUNC12(*AliceAV, t_toxav_receive_audio_frame_cb, AliceCC);

    /* Bob */
    FUNC14(*BobAV, t_toxav_call_cb, BobCC);
    FUNC15(*BobAV, t_toxav_call_state_cb, BobCC);
    FUNC13(*BobAV, t_toxav_bit_rate_status_cb, BobCC);
    FUNC16(*BobAV, t_toxav_receive_video_frame_cb, BobCC);
    FUNC12(*BobAV, t_toxav_receive_audio_frame_cb, BobCC);


    FUNC2("Created 2 instances of ToxAV\n");
    FUNC2("All set after %llu seconds!\n", FUNC3(NULL) - cur_time);
}