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
typedef  char WCHAR ;
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  IEnumBackgroundCopyJobs ;
typedef  int /*<<< orphan*/  IBackgroundCopyManager ;
typedef  int /*<<< orphan*/  IBackgroundCopyJob ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_LOCAL_SERVER ; 
 int /*<<< orphan*/  CLSID_BackgroundCopyManager ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IBackgroundCopyManager ; 
 int MAX_PATH ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(void)
{
    static const WCHAR format[] = {'t','e','s','t','_','%','u', 0};
    WCHAR secretName[MAX_PATH];
    IEnumBackgroundCopyJobs* enumJobs;
    IBackgroundCopyManager *manager = NULL;
    HRESULT hres;
    hres = FUNC0(&CLSID_BackgroundCopyManager, NULL,
                            CLSCTX_LOCAL_SERVER, &IID_IBackgroundCopyManager,
                            (void **) &manager);
    FUNC11(hres == S_OK, "got 0x%08x\n", hres);

    FUNC14(secretName, format, FUNC2());
    FUNC12(secretName);

    hres = FUNC5(manager, 0, &enumJobs);
    FUNC11(hres == S_OK, "EnumJobs failed: %08x\n", hres);
    if(hres != S_OK)
        FUNC13("Unable to create job enumerator.\n");
    else
    {
        ULONG i, n;
        IBackgroundCopyJob *job;
        BOOL found = FALSE;

        hres = FUNC7(enumJobs, &n);
        FUNC11(hres == S_OK, "GetCount failed: %08x\n", hres);
        for (i = 0; i < n && !found; ++i)
        {
            LPWSTR name;
            FUNC8(enumJobs, 1, &job, NULL);
            FUNC3(job, &name);
            if (FUNC10(name, secretName) == 0)
                found = TRUE;
            FUNC1(name);
            FUNC4(job);
        }

        FUNC9(enumJobs);
        FUNC11(found, "Adding a job in another process failed\n");
    }

    FUNC6(manager);
}