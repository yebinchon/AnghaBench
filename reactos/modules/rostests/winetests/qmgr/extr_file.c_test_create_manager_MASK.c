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
typedef  int /*<<< orphan*/  IBackgroundCopyManager ;
typedef  int /*<<< orphan*/  IBackgroundCopyJob ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 int /*<<< orphan*/  BG_JOB_TYPE_DOWNLOAD ; 
 int /*<<< orphan*/  CLSCTX_LOCAL_SERVER ; 
 int /*<<< orphan*/  CLSID_BackgroundCopyManager ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  ERROR_SERVICE_DISABLED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IBackgroundCopyManager ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_displayName ; 
 int /*<<< orphan*/  test_localName ; 
 int /*<<< orphan*/  test_remoteName ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static HRESULT FUNC7(void)
{
    HRESULT hres;
    IBackgroundCopyManager *manager = NULL;

    /* Creating BITS instance */
    hres = FUNC0(&CLSID_BackgroundCopyManager, NULL, CLSCTX_LOCAL_SERVER,
                            &IID_IBackgroundCopyManager, (void **) &manager);

    if(hres == FUNC1(ERROR_SERVICE_DISABLED)) {
        FUNC6("Needed Service is disabled\n");
        return hres;
    }

    if (hres == S_OK)
    {
        IBackgroundCopyJob *job;
        GUID jobId;

        hres = FUNC3(manager, test_displayName, BG_JOB_TYPE_DOWNLOAD, &jobId, &job);
        if (hres == S_OK)
        {
            hres = FUNC5(job, test_localName, test_remoteName);
            if (hres != S_OK)
                FUNC6("AddFile() with file:// protocol failed. Tests will be skipped.\n");
            FUNC2(job);
        }
        FUNC4(manager);
    }

    return hres;
}