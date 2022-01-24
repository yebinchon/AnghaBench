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
typedef  float WCHAR ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ BG_JOB_STATE ;

/* Variables and functions */
 scalar_t__ BG_JOB_STATE_ACKNOWLEDGED ; 
 scalar_t__ BG_JOB_STATE_CONNECTING ; 
 scalar_t__ BG_JOB_STATE_QUEUED ; 
 scalar_t__ BG_JOB_STATE_TRANSFERRED ; 
 scalar_t__ BG_JOB_STATE_TRANSFERRING ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 float* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,float*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (float*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (float*,float const*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  test_job ; 
 int /*<<< orphan*/  test_localPathA ; 
 int /*<<< orphan*/  test_localPathB ; 
 int /*<<< orphan*/  test_remotePathA ; 
 int /*<<< orphan*/  test_remotePathB ; 

__attribute__((used)) static void FUNC16(void)
{
    static const WCHAR prot[] = {'f','i','l','e',':','/','/', 0};
    static const int timeout_sec = 30;
    WCHAR *urlA, *urlB;
    HRESULT hres;
    BG_JOB_STATE state;
    int i;

    FUNC0(test_localPathA);
    FUNC0(test_localPathB);
    FUNC13(test_remotePathA, "This is a WINE test file for BITS\n");
    FUNC13(test_remotePathB, "This is another WINE test file for BITS\n");

    urlA = FUNC2(FUNC1(), 0,
                     (7 + FUNC12(test_remotePathA) + 1) * sizeof urlA[0]);
    urlB = FUNC2(FUNC1(), 0,
                     (7 + FUNC12(test_remotePathB) + 1) * sizeof urlB[0]);
    if (!urlA || !urlB)
    {
        FUNC15("Unable to allocate memory for URLs\n");
        FUNC3(FUNC1(), 0, urlA);
        FUNC3(FUNC1(), 0, urlB);
        return;
    }

    FUNC11(urlA, prot);
    FUNC10(urlA, test_remotePathA);
    FUNC11(urlB, prot);
    FUNC10(urlB, test_remotePathB);

    hres = FUNC4(test_job, urlA, test_localPathA);
    FUNC14(hres == S_OK, "got 0x%08x\n", hres);

    hres = FUNC4(test_job, urlB, test_localPathB);
    FUNC14(hres == S_OK, "got 0x%08x\n", hres);

    hres = FUNC7(test_job);
    FUNC14(hres == S_OK, "IBackgroundCopyJob_Resume\n");

    for (i = 0; i < timeout_sec; ++i)
    {
        hres = FUNC6(test_job, &state);
        FUNC14(hres == S_OK, "IBackgroundCopyJob_GetState\n");
        FUNC14(state == BG_JOB_STATE_QUEUED || state == BG_JOB_STATE_CONNECTING
           || state == BG_JOB_STATE_TRANSFERRING || state == BG_JOB_STATE_TRANSFERRED,
           "Bad state: %d\n", state);
        if (state == BG_JOB_STATE_TRANSFERRED)
            break;
        FUNC8(1000);
    }

    FUNC14(i < timeout_sec, "BITS jobs timed out\n");
    hres = FUNC5(test_job);
    FUNC14(hres == S_OK, "IBackgroundCopyJob_Complete\n");
    hres = FUNC6(test_job, &state);
    FUNC14(hres == S_OK, "IBackgroundCopyJob_GetState\n");
    FUNC14(state == BG_JOB_STATE_ACKNOWLEDGED, "Bad state: %d\n", state);

    FUNC9(test_remotePathA, test_localPathA);
    FUNC9(test_remotePathB, test_localPathB);

    FUNC14(FUNC0(test_remotePathA), "DeleteFile\n");
    FUNC14(FUNC0(test_remotePathB), "DeleteFile\n");
    FUNC0(test_localPathA);
    FUNC0(test_localPathB);

    FUNC3(FUNC1(), 0, urlA);
    FUNC3(FUNC1(), 0, urlB);
}