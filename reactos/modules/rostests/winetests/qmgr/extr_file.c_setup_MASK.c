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
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BG_JOB_TYPE_DOWNLOAD ; 
 int /*<<< orphan*/  CLSCTX_LOCAL_SERVER ; 
 int /*<<< orphan*/  CLSID_BackgroundCopyManager ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IBackgroundCopyManager ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  test_displayName ; 
 int /*<<< orphan*/  test_enumFiles ; 
 int /*<<< orphan*/  test_file ; 
 int /*<<< orphan*/ * test_job ; 
 int /*<<< orphan*/  test_localName ; 
 int /*<<< orphan*/ * test_manager ; 
 int /*<<< orphan*/  test_remoteName ; 

__attribute__((used)) static BOOL FUNC9(void)
{
    HRESULT hres;
    GUID test_jobId;

    test_manager = NULL;
    test_job = NULL;
    FUNC8(&test_jobId, 0, sizeof test_jobId);

    hres = FUNC0(&CLSID_BackgroundCopyManager, NULL,
            CLSCTX_LOCAL_SERVER, &IID_IBackgroundCopyManager,
            (void **) &test_manager);
    if(hres != S_OK)
        return FALSE;

    hres = FUNC3(test_manager, test_displayName,
            BG_JOB_TYPE_DOWNLOAD, &test_jobId, &test_job);
    if(hres != S_OK)
    {
        FUNC4(test_manager);
        return FALSE;
    }

    if (FUNC7(test_job, test_localName, test_remoteName) != S_OK
        || FUNC1(test_job, &test_enumFiles) != S_OK)
    {
        FUNC2(test_job);
        FUNC4(test_manager);
        return FALSE;
    }

    hres = FUNC5(test_enumFiles, 1, &test_file, NULL);
    if(hres != S_OK)
    {
        FUNC6(test_enumFiles);
        FUNC2(test_job);
        FUNC4(test_manager);
        return FALSE;
    }

    return TRUE;
}