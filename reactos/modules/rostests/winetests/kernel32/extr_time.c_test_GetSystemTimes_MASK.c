#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usertime ;
typedef  int /*<<< orphan*/  sbi ;
typedef  int /*<<< orphan*/  kerneltime ;
typedef  int /*<<< orphan*/  idletime ;
typedef  int ULONG ;
struct TYPE_18__ {int QuadPart; int /*<<< orphan*/  HighPart; int /*<<< orphan*/  LowPart; } ;
typedef  TYPE_4__ ULARGE_INTEGER ;
struct TYPE_20__ {int /*<<< orphan*/  dwHighDateTime; int /*<<< orphan*/  dwLowDateTime; } ;
struct TYPE_17__ {int QuadPart; } ;
struct TYPE_16__ {int QuadPart; } ;
struct TYPE_15__ {int QuadPart; } ;
struct TYPE_19__ {int NumberOfProcessors; TYPE_3__ IdleTime; TYPE_2__ KernelTime; TYPE_1__ UserTime; } ;
typedef  TYPE_5__ SYSTEM_PROCESSOR_PERFORMANCE_INFORMATION ;
typedef  TYPE_5__ SYSTEM_BASIC_INFORMATION ;
typedef  TYPE_7__ FILETIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_5__*,int,int*) ; 
 int /*<<< orphan*/  SystemBasicInformation ; 
 int /*<<< orphan*/  SystemProcessorPerformanceInformation ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int FUNC6 (TYPE_7__*,TYPE_7__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(void)
{

    FILETIME idletime, kerneltime, usertime;
    int i;
    ULARGE_INTEGER ul1, ul2, ul3;
    SYSTEM_PROCESSOR_PERFORMANCE_INFORMATION *sppi;
    SYSTEM_BASIC_INFORMATION sbi;
    ULONG ReturnLength;
    ULARGE_INTEGER total_usertime, total_kerneltime, total_idletime;

    if (!&pGetSystemTimes)
    {
        FUNC8("GetSystemTimes not available\n");
        return;
    }

    FUNC5( FUNC6(NULL, NULL, NULL), "GetSystemTimes failed unexpectedly\n" );

    total_usertime.QuadPart = 0;
    total_kerneltime.QuadPart = 0;
    total_idletime.QuadPart = 0;
    FUNC4( &idletime, 0x11, sizeof(idletime) );
    FUNC4( &kerneltime, 0x11, sizeof(kerneltime) );
    FUNC4( &usertime, 0x11, sizeof(usertime) );
    FUNC5( FUNC6(&idletime, &kerneltime , &usertime),
        "GetSystemTimes failed unexpectedly\n" );

    ul1.LowPart = idletime.dwLowDateTime;
    ul1.HighPart = idletime.dwHighDateTime;
    ul2.LowPart = kerneltime.dwLowDateTime;
    ul2.HighPart = kerneltime.dwHighDateTime;
    ul3.LowPart = usertime.dwLowDateTime;
    ul3.HighPart = usertime.dwHighDateTime;

    FUNC5( !FUNC3(SystemBasicInformation, &sbi, sizeof(sbi), &ReturnLength),
                                  "NtQuerySystemInformation failed\n" );
    FUNC5( sizeof(sbi) == ReturnLength, "Inconsistent length %d\n", ReturnLength );

    /* Check if we have some return values */
    FUNC7( "Number of Processors : %d\n", sbi.NumberOfProcessors );
    FUNC5( sbi.NumberOfProcessors > 0, "Expected more than 0 processors, got %d\n",
        sbi.NumberOfProcessors );

    sppi = FUNC1( FUNC0(), 0,
                      sizeof(SYSTEM_PROCESSOR_PERFORMANCE_INFORMATION) * sbi.NumberOfProcessors);

    FUNC5( !FUNC3( SystemProcessorPerformanceInformation, sppi,
                                   sizeof(SYSTEM_PROCESSOR_PERFORMANCE_INFORMATION) * sbi.NumberOfProcessors,
                                   &ReturnLength),
                                   "NtQuerySystemInformation failed\n" );

    for (i = 0; i < sbi.NumberOfProcessors; i++)
    {
        total_usertime.QuadPart += sppi[i].UserTime.QuadPart;
        total_kerneltime.QuadPart += sppi[i].KernelTime.QuadPart;
        total_idletime.QuadPart += sppi[i].IdleTime.QuadPart;
    }

    FUNC5( total_idletime.QuadPart - ul1.QuadPart < 10000000, "test idletime failed\n" );
    FUNC5( total_kerneltime.QuadPart - ul2.QuadPart < 10000000, "test kerneltime failed\n" );
    FUNC5( total_usertime.QuadPart - ul3.QuadPart < 10000000, "test usertime failed\n" );

    FUNC2(FUNC0(), 0, sppi);
}