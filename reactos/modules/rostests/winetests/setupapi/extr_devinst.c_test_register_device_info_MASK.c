#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  device ;
struct TYPE_7__ {int cbSize; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ SP_DEVINFO_DATA ;
typedef  int /*<<< orphan*/ * HDEVINFO ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_HANDLE ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/ * INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  guid ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 

__attribute__((used)) static void FUNC12(void)
{
    SP_DEVINFO_DATA device = {0};
    BOOL ret;
    HDEVINFO set;
    int i = 0;

    FUNC1(0xdeadbeef);
    ret = FUNC8(NULL, NULL, 0, NULL, NULL, NULL);
    FUNC11(!ret, "Expected failure.\n");
    FUNC11(FUNC0() == ERROR_INVALID_HANDLE, "Got unexpected error %#x.\n", FUNC0());

    set = FUNC3(&guid, NULL);
    FUNC11(set != INVALID_HANDLE_VALUE, "Failed to create device list, error %#x.\n", FUNC0());

    FUNC1(0xdeadbeef);
    ret = FUNC8(set, NULL, 0, NULL, NULL, NULL);
    FUNC11(!ret, "Expected failure.\n");
    FUNC11(FUNC0() == ERROR_INVALID_PARAMETER, "Got unexpected error %#x.\n", FUNC0());

    FUNC1(0xdeadbeef);
    ret = FUNC8(set, &device, 0, NULL, NULL, NULL);
    FUNC11(!ret, "Expected failure.\n");
    FUNC11(FUNC0() == ERROR_INVALID_PARAMETER, "Got unexpected error %#x.\n", FUNC0());

    device.cbSize = sizeof(device);
    FUNC1(0xdeadbeef);
    ret = FUNC8(set, &device, 0, NULL, NULL, NULL);
    FUNC11(!ret, "Expected failure.\n");
    FUNC11(FUNC0() == ERROR_INVALID_PARAMETER, "Got unexpected error %#x.\n", FUNC0());

    ret = FUNC2(set, "Root\\LEGACY_BOGUS\\0000", &guid, NULL, NULL, 0, &device);
    FUNC11(ret, "Failed to create device, error %#x.\n", FUNC0());
    ret = FUNC8(set, &device, 0, NULL, NULL, NULL);
    FUNC11(ret, "Failed to register device, error %#x.\n", FUNC0());

    ret = FUNC2(set, "Root\\LEGACY_BOGUS\\0001", &guid, NULL, NULL, 0, &device);
    FUNC11(ret, "Failed to create device, error %#x.\n", FUNC0());
    ret = FUNC8(set, &device, 0, NULL, NULL, NULL);
    FUNC11(ret, "Failed to register device, error %#x.\n", FUNC0());
    ret = FUNC9(set, &device);
    FUNC11(ret, "Failed to remove device, error %#x.\n", FUNC0());

    ret = FUNC2(set, "Root\\LEGACY_BOGUS\\0002", &guid, NULL, NULL, 0, &device);
    FUNC11(ret, "Failed to create device, error %#x.\n", FUNC0());
    ret = FUNC8(set, &device, 0, NULL, NULL, NULL);
    FUNC11(ret, "Failed to register device, error %#x.\n", FUNC0());
    ret = FUNC4(set, &device);
    FUNC11(ret, "Failed to remove device, error %#x.\n", FUNC0());

    ret = FUNC2(set, "Root\\LEGACY_BOGUS\\0003", &guid, NULL, NULL, 0, &device);
    FUNC11(ret, "Failed to create device, error %#x.\n", FUNC0());

    FUNC5(set);

    set = FUNC7(&guid, NULL, NULL, 0);
    FUNC11(set != INVALID_HANDLE_VALUE, "Failed to create device list, error %#x.\n", FUNC0());

    FUNC10(set, 0, &guid, "Root\\LEGACY_BOGUS\\0000");
    FUNC10(set, 1, &guid, "Root\\LEGACY_BOGUS\\0002");
    FUNC10(set, 2, &guid, NULL);

    while (FUNC6(set, i++, &device))
    {
        ret = FUNC9(set, &device);
        FUNC11(ret, "Failed to remove device, error %#x.\n", FUNC0());
    }

    FUNC5(set);
}