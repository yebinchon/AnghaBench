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
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ ERROR_ALREADY_EXISTS ; 
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_MAP_ALL_ACCESS ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int PAGE_READWRITE ; 
 int SEC_COMMIT ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 

__attribute__((used)) static void FUNC6(void)
{
    HANDLE handle, handle2;

    /* test case sensitivity */

    FUNC4(0xdeadbeef);
    handle = FUNC1( INVALID_HANDLE_VALUE, NULL, SEC_COMMIT | PAGE_READWRITE, 0, 0x1000,
                                 "Wine Test Mapping");
    FUNC5( handle != NULL, "CreateFileMapping failed with error %u\n", FUNC2());
    FUNC5( FUNC2() == 0, "wrong error %u\n", FUNC2());

    FUNC4(0xdeadbeef);
    handle2 = FUNC1( INVALID_HANDLE_VALUE, NULL, SEC_COMMIT | PAGE_READWRITE, 0, 0x1000,
                                  "Wine Test Mapping");
    FUNC5( handle2 != NULL, "CreateFileMapping failed with error %d\n", FUNC2());
    FUNC5( FUNC2() == ERROR_ALREADY_EXISTS, "wrong error %u\n", FUNC2());
    FUNC0( handle2 );

    FUNC4(0xdeadbeef);
    handle2 = FUNC1( INVALID_HANDLE_VALUE, NULL, SEC_COMMIT | PAGE_READWRITE, 0, 0x1000,
                                 "WINE TEST MAPPING");
    FUNC5( handle2 != NULL, "CreateFileMapping failed with error %d\n", FUNC2());
    FUNC5( FUNC2() == 0, "wrong error %u\n", FUNC2());
    FUNC0( handle2 );

    FUNC4(0xdeadbeef);
    handle2 = FUNC3( FILE_MAP_ALL_ACCESS, FALSE, "Wine Test Mapping");
    FUNC5( handle2 != NULL, "OpenFileMapping failed with error %d\n", FUNC2());
    FUNC0( handle2 );

    FUNC4(0xdeadbeef);
    handle2 = FUNC3( FILE_MAP_ALL_ACCESS, FALSE, "WINE TEST MAPPING");
    FUNC5( !handle2, "OpenFileMapping succeeded\n");
    FUNC5( FUNC2() == ERROR_FILE_NOT_FOUND, "wrong error %u\n", FUNC2());

    FUNC0( handle );
}