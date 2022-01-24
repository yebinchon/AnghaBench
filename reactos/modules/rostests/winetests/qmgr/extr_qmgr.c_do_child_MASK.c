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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  IBackgroundCopyManager ;
typedef  int /*<<< orphan*/  IBackgroundCopyJob ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 int /*<<< orphan*/  BG_JOB_TYPE_DOWNLOAD ; 
 int /*<<< orphan*/  CLSCTX_LOCAL_SERVER ; 
 int /*<<< orphan*/  CLSID_BackgroundCopyManager ; 
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IBackgroundCopyManager ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 

__attribute__((used)) static void FUNC6(const char *secretA)
{
    WCHAR secretW[MAX_PATH];
    IBackgroundCopyManager *manager = NULL;
    GUID id;
    IBackgroundCopyJob *job;
    HRESULT hres;
    hres = FUNC0(&CLSID_BackgroundCopyManager, NULL,
                            CLSCTX_LOCAL_SERVER, &IID_IBackgroundCopyManager,
                            (void **) &manager);
    FUNC5(hres == S_OK, "got 0x%08x\n", hres);

    FUNC4(CP_ACP, 0, secretA, -1, secretW, MAX_PATH);
    hres = FUNC2(manager, secretW,
                                            BG_JOB_TYPE_DOWNLOAD, &id, &job);
    FUNC5(hres == S_OK, "CreateJob in child process\n");
    FUNC1(job);
    FUNC3(manager);
}