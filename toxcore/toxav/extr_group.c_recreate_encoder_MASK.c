#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * audio_encoder; int /*<<< orphan*/  audio_bitrate; int /*<<< orphan*/  audio_channels; int /*<<< orphan*/  audio_sample_rate; } ;
typedef  TYPE_1__ Group_AV ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPUS_APPLICATION_AUDIO ; 
 int OPUS_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(Group_AV *group_av)
{
    if (group_av->audio_encoder) {
        FUNC5(group_av->audio_encoder);
        group_av->audio_encoder = NULL;
    }

    int rc = OPUS_OK;
    group_av->audio_encoder = FUNC3(group_av->audio_sample_rate, group_av->audio_channels,
                              OPUS_APPLICATION_AUDIO, &rc);

    if (rc != OPUS_OK) {
        FUNC0("Error while starting audio encoder: %s", FUNC6(rc));
        group_av->audio_encoder = NULL;
        return -1;
    }

    rc = FUNC4(group_av->audio_encoder, FUNC1(group_av->audio_bitrate));

    if (rc != OPUS_OK) {
        FUNC0("Error while setting encoder ctl: %s", FUNC6(rc));
        FUNC5(group_av->audio_encoder);
        group_av->audio_encoder = NULL;
        return -1;
    }

    rc = FUNC4(group_av->audio_encoder, FUNC2(10));

    if (rc != OPUS_OK) {
        FUNC0("Error while setting encoder ctl: %s", FUNC6(rc));
        FUNC5(group_av->audio_encoder);
        group_av->audio_encoder = NULL;
        return -1;
    }

    return 0;
}