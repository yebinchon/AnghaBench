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
typedef  int /*<<< orphan*/  IBackgroundCopyManager ;
typedef  int /*<<< orphan*/  IBackgroundCopyJob ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 int /*<<< orphan*/  BG_JOB_TYPE_DOWNLOAD ; 
 int /*<<< orphan*/  CLSCTX_LOCAL_SERVER ; 
 int /*<<< orphan*/  CLSID_BackgroundCopyManager ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IBackgroundCopyManager ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(void)
{
    /* Job information */
    static const WCHAR copyNameW[] = {'T', 'e', 's', 't', 0};
    IBackgroundCopyJob* job = NULL;
    GUID tmpId;
    HRESULT hres;
    ULONG res;
    IBackgroundCopyManager* manager = NULL;

    /* Setup */
    hres = FUNC0(&CLSID_BackgroundCopyManager, NULL,
                            CLSCTX_LOCAL_SERVER, &IID_IBackgroundCopyManager,
                            (void **) &manager);
    FUNC4(hres == S_OK, "got 0x%08x\n", hres);

    /* Create bits job */
    hres = FUNC2(manager, copyNameW,
                                            BG_JOB_TYPE_DOWNLOAD, &tmpId,
                                            &job);
    FUNC4(hres == S_OK, "CreateJob failed: %08x\n", hres);

    res = FUNC1(job);
    FUNC4(res == 0, "Bad ref count on release: %u\n", res);
    FUNC3(manager);
}