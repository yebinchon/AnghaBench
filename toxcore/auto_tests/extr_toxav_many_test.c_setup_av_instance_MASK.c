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
typedef  int /*<<< orphan*/  ToxAV ;
typedef  int /*<<< orphan*/  Tox ;
typedef  scalar_t__ TOXAV_ERR_NEW ;
typedef  int /*<<< orphan*/  CallControl ;

/* Variables and functions */
 scalar_t__ TOXAV_ERR_NEW_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  t_toxav_call_cb ; 
 int /*<<< orphan*/  t_toxav_call_state_cb ; 
 int /*<<< orphan*/  t_toxav_receive_audio_frame_cb ; 
 int /*<<< orphan*/  t_toxav_receive_video_frame_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,scalar_t__*) ; 

ToxAV *FUNC6(Tox *tox, CallControl *CC)
{
    TOXAV_ERR_NEW error;

    ToxAV *av = FUNC5(tox, &error);
    FUNC0(error == TOXAV_ERR_NEW_OK);

    FUNC2(av, t_toxav_call_cb, CC);
    FUNC3(av, t_toxav_call_state_cb, CC);
    FUNC4(av, t_toxav_receive_video_frame_cb, CC);
    FUNC1(av, t_toxav_receive_audio_frame_cb, CC);

    return av;
}