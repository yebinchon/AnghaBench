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
typedef  int /*<<< orphan*/  thread_affinity ;
typedef  int /*<<< orphan*/  tbi ;
typedef  int /*<<< orphan*/  proc_affinity ;
typedef  int /*<<< orphan*/  pbi ;
struct TYPE_9__ {int AffinityMask; } ;
struct TYPE_8__ {int dwNumberOfProcessors; } ;
struct TYPE_7__ {int AffinityMask; } ;
typedef  TYPE_1__ THREAD_BASIC_INFORMATION ;
typedef  TYPE_2__ SYSTEM_INFO ;
typedef  TYPE_3__ PROCESS_BASIC_INFORMATION ;
typedef  scalar_t__ NTSTATUS ;
typedef  int DWORD_PTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  ProcessAffinityMask ; 
 int /*<<< orphan*/  ProcessBasicInformation ; 
 scalar_t__ STATUS_INVALID_PARAMETER ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  ThreadAffinityMask ; 
 int /*<<< orphan*/  ThreadBasicInformation ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    NTSTATUS status;
    PROCESS_BASIC_INFORMATION pbi;
    DWORD_PTR proc_affinity, thread_affinity;
    THREAD_BASIC_INFORMATION tbi;
    SYSTEM_INFO si;

    FUNC2(&si);
    status = FUNC5( FUNC0(), ProcessBasicInformation, &pbi, sizeof(pbi), NULL );
    FUNC4( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    proc_affinity = pbi.AffinityMask;
    FUNC4( proc_affinity == (1 << si.dwNumberOfProcessors) - 1, "Unexpected process affinity\n" );
    proc_affinity = 1 << si.dwNumberOfProcessors;
    status = FUNC7( FUNC0(), ProcessAffinityMask, &proc_affinity, sizeof(proc_affinity) );
    FUNC4( status == STATUS_INVALID_PARAMETER,
        "Expected STATUS_INVALID_PARAMETER, got %08x\n", status);

    proc_affinity = 0;
    status = FUNC7( FUNC0(), ProcessAffinityMask, &proc_affinity, sizeof(proc_affinity) );
    FUNC4( status == STATUS_INVALID_PARAMETER,
        "Expected STATUS_INVALID_PARAMETER, got %08x\n", status);

    status = FUNC6( FUNC1(), ThreadBasicInformation, &tbi, sizeof(tbi), NULL );
    FUNC4( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    FUNC4( tbi.AffinityMask == (1 << si.dwNumberOfProcessors) - 1, "Unexpected thread affinity\n" );
    thread_affinity = 1 << si.dwNumberOfProcessors;
    status = FUNC8( FUNC1(), ThreadAffinityMask, &thread_affinity, sizeof(thread_affinity) );
    FUNC4( status == STATUS_INVALID_PARAMETER,
        "Expected STATUS_INVALID_PARAMETER, got %08x\n", status);
    thread_affinity = 0;
    status = FUNC8( FUNC1(), ThreadAffinityMask, &thread_affinity, sizeof(thread_affinity) );
    FUNC4( status == STATUS_INVALID_PARAMETER,
        "Expected STATUS_INVALID_PARAMETER, got %08x\n", status);

    thread_affinity = 1;
    status = FUNC8( FUNC1(), ThreadAffinityMask, &thread_affinity, sizeof(thread_affinity) );
    FUNC4( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    status = FUNC6( FUNC1(), ThreadBasicInformation, &tbi, sizeof(tbi), NULL );
    FUNC4(status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    FUNC4( tbi.AffinityMask == 1, "Unexpected thread affinity\n" );

    /* NOTE: Pre-Vista does not recognize the "all processors" flag (all bits set) */
    thread_affinity = ~(DWORD_PTR)0;
    status = FUNC8( FUNC1(), ThreadAffinityMask, &thread_affinity, sizeof(thread_affinity) );
    FUNC4( FUNC3(status == STATUS_INVALID_PARAMETER) || status == STATUS_SUCCESS,
        "Expected STATUS_SUCCESS, got %08x\n", status);

    if (si.dwNumberOfProcessors <= 1)
    {
        FUNC9("only one processor, skipping affinity testing\n");
        return;
    }

    /* Test thread affinity mask resulting from "all processors" flag */
    if (status == STATUS_SUCCESS)
    {
        status = FUNC6( FUNC1(), ThreadBasicInformation, &tbi, sizeof(tbi), NULL );
        FUNC4(status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
        FUNC4( FUNC3(tbi.AffinityMask == 1) || tbi.AffinityMask == (1 << si.dwNumberOfProcessors) - 1,
            "Unexpected thread affinity\n" );
    }
    else
        FUNC9("Cannot test thread affinity mask for 'all processors' flag\n");

    proc_affinity = 2;
    status = FUNC7( FUNC0(), ProcessAffinityMask, &proc_affinity, sizeof(proc_affinity) );
    FUNC4( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    status = FUNC5( FUNC0(), ProcessBasicInformation, &pbi, sizeof(pbi), NULL );
    FUNC4( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    proc_affinity = pbi.AffinityMask;
    FUNC4( proc_affinity == 2, "Unexpected process affinity\n" );
    /* Setting the process affinity changes the thread affinity to match */
    status = FUNC6( FUNC1(), ThreadBasicInformation, &tbi, sizeof(tbi), NULL );
    FUNC4( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    FUNC4( tbi.AffinityMask == 2, "Unexpected thread affinity\n" );
    /* The thread affinity is restricted to the process affinity */
    thread_affinity = 1;
    status = FUNC8( FUNC1(), ThreadAffinityMask, &thread_affinity, sizeof(thread_affinity) );
    FUNC4( status == STATUS_INVALID_PARAMETER,
        "Expected STATUS_INVALID_PARAMETER, got %08x\n", status);

    proc_affinity = (1 << si.dwNumberOfProcessors) - 1;
    status = FUNC7( FUNC0(), ProcessAffinityMask, &proc_affinity, sizeof(proc_affinity) );
    FUNC4( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    /* Resetting the process affinity also resets the thread affinity */
    status = FUNC6( FUNC1(), ThreadBasicInformation, &tbi, sizeof(tbi), NULL );
    FUNC4( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    FUNC4( tbi.AffinityMask == (1 << si.dwNumberOfProcessors) - 1,
        "Unexpected thread affinity\n" );
}