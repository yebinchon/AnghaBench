#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  id ;
typedef  int /*<<< orphan*/  device ;
struct TYPE_4__ {int cbSize; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ SP_DEVINFO_DATA ;
typedef  int /*<<< orphan*/ * HDEVINFO ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  DICD_GENERATE_ID ; 
 char* ERROR_INSUFFICIENT_BUFFER ; 
 char* ERROR_INVALID_HANDLE ; 
 char* ERROR_INVALID_PARAMETER ; 
 char* FUNC0 () ; 
 int /*<<< orphan*/ * INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  guid ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    BOOL ret;
    HDEVINFO set;
    SP_DEVINFO_DATA device = {0};
    char id[200];
    DWORD size;

    FUNC1(0xdeadbeef);
    ret = FUNC5(NULL, NULL, NULL, 0, NULL);
    FUNC6(!ret, "Expected failure.\n");
    FUNC6(FUNC0() == ERROR_INVALID_HANDLE, "Got unexpected error %#x.\n", FUNC0());

    FUNC1(0xdeadbeef);
    ret = FUNC5(NULL, &device, NULL, 0, NULL);
    FUNC6(!ret, "Expected failure.\n");
    FUNC6(FUNC0() == ERROR_INVALID_HANDLE, "Got unexpected error %#x.\n", FUNC0());

    set = FUNC3(&guid, NULL);
    FUNC6(set != INVALID_HANDLE_VALUE, "Failed to create device list, error %#x.\n", FUNC0());

    FUNC1(0xdeadbeef);
    ret = FUNC5(set, NULL, NULL, 0, NULL);
    FUNC6(!ret, "Expected failure.\n");
    FUNC6(FUNC0() == ERROR_INVALID_PARAMETER, "Got unexpected error %#x.\n", FUNC0());

    FUNC1(0xdeadbeef);
    ret = FUNC5(set, &device, NULL, 0, NULL);
    FUNC6(!ret, "Expected failure.\n");
    FUNC6(FUNC0() == ERROR_INVALID_PARAMETER, "Got unexpected error %#x.\n", FUNC0());

    FUNC1(0xdeadbeef);
    ret = FUNC5(set, &device, NULL, 0, &size);
    FUNC6(!ret, "Expected failure.\n");
    FUNC6(FUNC0() == ERROR_INVALID_PARAMETER, "Got unexpected error %#x.\n", FUNC0());

    device.cbSize = sizeof(device);
    FUNC1(0xdeadbeef);
    ret = FUNC5(set, &device, NULL, 0, &size);
    FUNC6(!ret, "Expected failure.\n");
    FUNC6(FUNC0() == ERROR_INVALID_PARAMETER, "Got unexpected error %#x.\n", FUNC0());

    ret = FUNC2(set, "Root\\LEGACY_BOGUS\\0000", &guid, NULL, NULL, 0, &device);
    FUNC6(ret, "Failed to create device, error %#x.\n", FUNC0());

    FUNC1(0xdeadbeef);
    ret = FUNC5(set, &device, NULL, 0, &size);
    FUNC6(!ret, "Expected failure.\n");
    FUNC6(FUNC0() == ERROR_INSUFFICIENT_BUFFER, "Got unexpected error %#x.\n", FUNC0());

    ret = FUNC5(set, &device, id, sizeof(id), NULL);
    FUNC6(ret, "Failed to get device id, error %#x.\n", FUNC0());
    FUNC6(!FUNC7(id, "ROOT\\LEGACY_BOGUS\\0000"), "Got unexpected id %s.\n", id);

    ret = FUNC2(set, "LEGACY_BOGUS", &guid, NULL, NULL, DICD_GENERATE_ID, &device);
    FUNC6(ret, "SetupDiCreateDeviceInfoA failed: %08x\n", FUNC0());

    ret = FUNC5(set, &device, id, sizeof(id), NULL);
    FUNC6(ret, "Failed to get device id, error %#x.\n", FUNC0());
    FUNC6(!FUNC7(id, "ROOT\\LEGACY_BOGUS\\0001"), "Got unexpected id %s.\n", id);

    FUNC4(set);
}