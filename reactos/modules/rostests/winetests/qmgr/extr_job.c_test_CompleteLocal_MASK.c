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
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ BG_JOB_STATE ;

/* Variables and functions */
 scalar_t__ BG_JOB_STATE_ACKNOWLEDGED ; 
 scalar_t__ BG_JOB_STATE_CONNECTING ; 
 scalar_t__ BG_JOB_STATE_QUEUED ; 
 scalar_t__ BG_JOB_STATE_TRANSFERRED ; 
 scalar_t__ BG_JOB_STATE_TRANSFERRING ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  test_job ; 
 int /*<<< orphan*/  test_localPathA ; 
 int /*<<< orphan*/  test_localPathB ; 
 int /*<<< orphan*/  test_remotePathA ; 
 int /*<<< orphan*/  test_remotePathB ; 

__attribute__((used)) static void FUNC9(void)
{
    static const int timeout_sec = 30;
    HRESULT hres;
    BG_JOB_STATE state;
    int i;

    FUNC0(test_localPathA);
    FUNC0(test_localPathB);
    FUNC7(test_remotePathA, "This is a WINE test file for BITS\n");
    FUNC7(test_remotePathB, "This is another WINE test file for BITS\n");

    hres = FUNC1(test_job, test_remotePathA,
                                      test_localPathA);
    FUNC8(hres == S_OK, "got 0x%08x\n", hres);

    hres = FUNC1(test_job, test_remotePathB,
                                      test_localPathB);
    FUNC8(hres == S_OK, "got 0x%08x\n", hres);

    hres = FUNC4(test_job);
    FUNC8(hres == S_OK, "IBackgroundCopyJob_Resume\n");

    for (i = 0; i < timeout_sec; ++i)
    {
        hres = FUNC3(test_job, &state);
        FUNC8(hres == S_OK, "IBackgroundCopyJob_GetState\n");
        FUNC8(state == BG_JOB_STATE_QUEUED || state == BG_JOB_STATE_CONNECTING
           || state == BG_JOB_STATE_TRANSFERRING || state == BG_JOB_STATE_TRANSFERRED,
           "Bad state: %d\n", state);
        if (state == BG_JOB_STATE_TRANSFERRED)
            break;
        FUNC5(1000);
    }

    FUNC8(i < timeout_sec, "BITS jobs timed out\n");
    hres = FUNC2(test_job);
    FUNC8(hres == S_OK, "IBackgroundCopyJob_Complete\n");
    hres = FUNC3(test_job, &state);
    FUNC8(hres == S_OK, "IBackgroundCopyJob_GetState\n");
    FUNC8(state == BG_JOB_STATE_ACKNOWLEDGED, "Bad state: %d\n", state);

    FUNC6(test_remotePathA, test_localPathA);
    FUNC6(test_remotePathB, test_localPathB);

    FUNC8(FUNC0(test_remotePathA), "DeleteFile\n");
    FUNC8(FUNC0(test_remotePathB), "DeleteFile\n");
    FUNC0(test_localPathA);
    FUNC0(test_localPathB);
}