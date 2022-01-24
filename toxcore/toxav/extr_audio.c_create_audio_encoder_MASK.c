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
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  OpusEncoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPUS_APPLICATION_VOIP ; 
 int OPUS_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

OpusEncoder *FUNC9 (int32_t bit_rate, int32_t sampling_rate, int32_t channel_count)
{
    int status = OPUS_OK;
    OpusEncoder *rc = FUNC5(sampling_rate, channel_count, OPUS_APPLICATION_VOIP, &status);

    if (status != OPUS_OK) {
        FUNC0("Error while starting audio encoder: %s", FUNC8(status));
        return NULL;
    }

    status = FUNC6(rc, FUNC1(bit_rate));

    if (status != OPUS_OK) {
        FUNC0("Error while setting encoder ctl: %s", FUNC8(status));
        goto FAILURE;
    }

    /* Enable in-band forward error correction in codec */
    status = FUNC6(rc, FUNC3(1));

    if (status != OPUS_OK) {
        FUNC0("Error while setting encoder ctl: %s", FUNC8(status));
        goto FAILURE;
    }

    /* Make codec resistant to up to 10% packet loss
     * NOTE This could also be adjusted on the fly, rather than hard-coded,
     *      with feedback from the receiving client.
     */
    status = FUNC6(rc, FUNC4(10));

    if (status != OPUS_OK) {
        FUNC0("Error while setting encoder ctl: %s", FUNC8(status));
        goto FAILURE;
    }

    /* Set algorithm to the highest complexity, maximizing compression */
    status = FUNC6(rc, FUNC2(10));

    if (status != OPUS_OK) {
        FUNC0("Error while setting encoder ctl: %s", FUNC8(status));
        goto FAILURE;
    }

    return rc;

FAILURE:
    FUNC7(rc);
    return NULL;
}