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
typedef  int /*<<< orphan*/  ITaskScheduler ;
typedef  int /*<<< orphan*/  IEnumWorkItems ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_CTaskScheduler ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_ITaskScheduler ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(void)
{
    ITaskScheduler *scheduler;
    IEnumWorkItems *tasks;
    HRESULT hr;

    hr = FUNC0(&CLSID_CTaskScheduler, NULL, CLSCTX_INPROC_SERVER,
            &IID_ITaskScheduler, (void **)&scheduler);
    FUNC4(hr == S_OK, "got 0x%08x\n", hr);

if (0) { /* crashes on win2k */
    hr = FUNC2(scheduler, NULL);
    FUNC4(hr == E_INVALIDARG, "got 0x%08x\n", hr);
}

    hr = FUNC2(scheduler, &tasks);
    FUNC4(hr == S_OK, "got 0x%08x\n", hr);
    FUNC1(tasks);

    FUNC3(scheduler);
}