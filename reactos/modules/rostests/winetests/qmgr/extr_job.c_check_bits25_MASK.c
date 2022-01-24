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
typedef  int /*<<< orphan*/  IBackgroundCopyJobHttpOptions ;
typedef  int /*<<< orphan*/  IBackgroundCopyJob ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_LOCAL_SERVER ; 
 int /*<<< orphan*/  CLSID_BackgroundCopyManager ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IBackgroundCopyJobHttpOptions ; 
 int /*<<< orphan*/  IID_IBackgroundCopyManager ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  test_displayName ; 
 int /*<<< orphan*/  test_jobId ; 
 int /*<<< orphan*/  test_type ; 

__attribute__((used)) static BOOL FUNC7(void)
{
    HRESULT hres;
    IBackgroundCopyManager *manager;
    IBackgroundCopyJob *job;
    IBackgroundCopyJobHttpOptions *options;

    hres = FUNC0(&CLSID_BackgroundCopyManager, NULL,
                            CLSCTX_LOCAL_SERVER, &IID_IBackgroundCopyManager,
                            (void **)&manager);
    if (hres != S_OK) return FALSE;

    hres = FUNC5(manager, test_displayName, test_type, &test_jobId, &job);
    if (hres != S_OK)
    {
        FUNC6(manager);
        return FALSE;
    }

    hres = FUNC3(job, &IID_IBackgroundCopyJobHttpOptions, (void **)&options);
    FUNC2(job);
    FUNC4(job);
    if (hres != S_OK)
    {
        FUNC6(manager);
        return FALSE;
    }

    FUNC1(options);
    FUNC6(manager);
    return TRUE;
}