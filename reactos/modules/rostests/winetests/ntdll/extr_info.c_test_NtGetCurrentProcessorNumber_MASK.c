#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tbi ;
typedef  int /*<<< orphan*/  pbi ;
typedef  int /*<<< orphan*/  old_thread_mask ;
typedef  int /*<<< orphan*/  old_process_mask ;
typedef  int /*<<< orphan*/  new_mask ;
typedef  int ULONG ;
struct TYPE_9__ {int AffinityMask; } ;
struct TYPE_8__ {int dwNumberOfProcessors; } ;
struct TYPE_7__ {int AffinityMask; } ;
typedef  TYPE_1__ THREAD_BASIC_INFORMATION ;
typedef  TYPE_2__ SYSTEM_INFO ;
typedef  TYPE_3__ PROCESS_BASIC_INFORMATION ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int DWORD_PTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  ProcessAffinityMask ; 
 int /*<<< orphan*/  ProcessBasicInformation ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  ThreadAffinityMask ; 
 int /*<<< orphan*/  ThreadBasicInformation ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,...) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(void)
{
    NTSTATUS status;
    SYSTEM_INFO si;
    PROCESS_BASIC_INFORMATION pbi;
    THREAD_BASIC_INFORMATION tbi;
    DWORD_PTR old_process_mask;
    DWORD_PTR old_thread_mask;
    DWORD_PTR new_mask;
    ULONG current_cpu;
    ULONG i;

    if (!&pNtGetCurrentProcessorNumber) {
        FUNC10("NtGetCurrentProcessorNumber not available\n");
        return;
    }

    FUNC2(&si);
    current_cpu = FUNC4();
    FUNC9("dwNumberOfProcessors: %d, current processor: %d\n", si.dwNumberOfProcessors, current_cpu);

    status = FUNC5(FUNC0(), ProcessBasicInformation, &pbi, sizeof(pbi), NULL);
    old_process_mask = pbi.AffinityMask;
    FUNC3(status == STATUS_SUCCESS, "got 0x%x (expected STATUS_SUCCESS)\n", status);

    status = FUNC6(FUNC1(), ThreadBasicInformation, &tbi, sizeof(tbi), NULL);
    old_thread_mask = tbi.AffinityMask;
    FUNC3(status == STATUS_SUCCESS, "got 0x%x (expected STATUS_SUCCESS)\n", status);

    /* allow the test to run on all processors */
    new_mask = (1 << si.dwNumberOfProcessors) - 1;
    status = FUNC7(FUNC0(), ProcessAffinityMask, &new_mask, sizeof(new_mask));
    FUNC3(status == STATUS_SUCCESS, "got 0x%x (expected STATUS_SUCCESS)\n", status);

    for (i = 0; i < si.dwNumberOfProcessors; i++)
    {
        new_mask = 1 << i;
        status = FUNC8(FUNC1(), ThreadAffinityMask, &new_mask, sizeof(new_mask));
        FUNC3(status == STATUS_SUCCESS, "%d: got 0x%x (expected STATUS_SUCCESS)\n", i, status);

        status = FUNC6(FUNC1(), ThreadBasicInformation, &tbi, sizeof(tbi), NULL);
        FUNC3(status == STATUS_SUCCESS, "%d: got 0x%x (expected STATUS_SUCCESS)\n", i, status);

        current_cpu = FUNC4();
        FUNC3((current_cpu == i), "%d (new_mask 0x%lx): running on processor %d (AffinityMask: 0x%lx)\n",
                                i, new_mask, current_cpu, tbi.AffinityMask);
    }

    /* restore old values */
    status = FUNC7(FUNC0(), ProcessAffinityMask, &old_process_mask, sizeof(old_process_mask));
    FUNC3(status == STATUS_SUCCESS, "got 0x%x (expected STATUS_SUCCESS)\n", status);

    status = FUNC8(FUNC1(), ThreadAffinityMask, &old_thread_mask, sizeof(old_thread_mask));
    FUNC3(status == STATUS_SUCCESS, "got 0x%x (expected STATUS_SUCCESS)\n", status);
}