#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_2__ {int /*<<< orphan*/  largeValue; } ;
typedef  scalar_t__ PDH_STATUS ;
typedef  int /*<<< orphan*/ * PDH_HQUERY ;
typedef  int /*<<< orphan*/  PDH_HCOUNTER ;
typedef  int /*<<< orphan*/  PDH_FMT_COUNTERVALUE ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  PDH_FMT_LARGE ; 
 scalar_t__ PDH_INVALID_HANDLE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 TYPE_1__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(void)
{
    PDH_STATUS status;
    PDH_HQUERY query;
    PDH_HCOUNTER counter;
    HANDLE event;
    BOOL ret;
    UINT i;

    status = FUNC7( NULL, 0, &query );
    FUNC10(status == ERROR_SUCCESS, "PdhOpenQuery failed 0x%08x\n", status);

    event = FUNC1( NULL, FALSE, FALSE, "winetest" );
    FUNC10(event != NULL, "CreateEvent failed\n");

    status = FUNC2( query, "\\System\\System Up Time", 0, &counter );
    FUNC10(status == ERROR_SUCCESS, "PdhAddCounterA failed 0x%08x\n", status);

    status = FUNC5( NULL, 1, event );
    FUNC10(status == PDH_INVALID_HANDLE, "PdhCollectQueryDataEx failed 0x%08x\n", status);

    status = FUNC5( query, 1, NULL );
    FUNC10(status == ERROR_SUCCESS, "PdhCollectQueryDataEx failed 0x%08x\n", status);

    status = FUNC5( query, 1, event );
    FUNC10(status == ERROR_SUCCESS, "PdhCollectQueryDataEx failed 0x%08x\n", status);

    status = FUNC4( query );
    FUNC10(status == ERROR_SUCCESS, "PdhCollectQueryData failed 0x%08x\n", status);

    for (i = 0; i < 3; i++)
    {
        if (FUNC9( event, INFINITE ) == WAIT_OBJECT_0)
        {
            PDH_FMT_COUNTERVALUE value;

            status = FUNC6( counter, PDH_FMT_LARGE, NULL, &value );
            FUNC10(status == ERROR_SUCCESS, "PdhGetFormattedCounterValue failed 0x%08x\n", status);

            FUNC11( "uptime %s\n", FUNC12(FUNC8(value).largeValue) );
        }
    }

    ret = FUNC0( event );
    FUNC10(ret, "CloseHandle failed\n");

    status = FUNC3( query );
    FUNC10(status == ERROR_SUCCESS, "PdhCloseQuery failed 0x%08x\n", status);
}