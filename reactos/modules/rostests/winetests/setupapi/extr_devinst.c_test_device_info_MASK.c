#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ret_device ;
typedef  int /*<<< orphan*/  id ;
typedef  int /*<<< orphan*/  device ;
struct TYPE_15__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; } ;
struct TYPE_17__ {int member_0; int member_1; int member_2; TYPE_1__ member_3; } ;
struct TYPE_16__ {int member_0; int cbSize; int /*<<< orphan*/  DevInst; int /*<<< orphan*/  ClassGuid; } ;
typedef  TYPE_2__ SP_DEVINFO_DATA ;
typedef  int /*<<< orphan*/ * HDEVINFO ;
typedef  TYPE_3__ GUID ;
typedef  int BOOL ;

/* Variables and functions */
 char* ERROR_CLASS_MISMATCH ; 
 char* ERROR_DEVINST_ALREADY_EXISTS ; 
 char* ERROR_INVALID_DEVINST_NAME ; 
 char* ERROR_INVALID_HANDLE ; 
 char* ERROR_INVALID_PARAMETER ; 
 char* ERROR_INVALID_USER_BUFFER ; 
 char* ERROR_NO_SUCH_DEVINST ; 
 TYPE_3__ const GUID_NULL ; 
 char* FUNC0 () ; 
 int /*<<< orphan*/ * INVALID_HANDLE_VALUE ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_3__ const*) ; 
 int MAX_DEVICE_ID_LEN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__ const*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,TYPE_3__ const*,char*) ; 
 TYPE_3__ const guid ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 char* FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(void)
{
    static const GUID deadbeef = {0xdeadbeef,0xdead,0xbeef,{0xde,0xad,0xbe,0xef,0xde,0xad,0xbe,0xef}};
    SP_DEVINFO_DATA device = {0}, ret_device = {sizeof(ret_device)};
    char id[MAX_DEVICE_ID_LEN + 2];
    HDEVINFO set;
    BOOL ret;

    FUNC2(0xdeadbeef);
    ret = FUNC3(NULL, NULL, NULL, NULL, NULL, 0, NULL);
    FUNC13(!ret, "Expected failure.\n");
    FUNC13(FUNC0() == ERROR_INVALID_DEVINST_NAME, "Got unexpected error %#x.\n", FUNC0());

    FUNC2(0xdeadbeef);
    ret = FUNC3(NULL, "Root\\LEGACY_BOGUS\\0000", NULL, NULL, NULL, 0, NULL);
    FUNC13(!ret, "Expected failure.\n");
    FUNC13(FUNC0() == ERROR_INVALID_HANDLE, "Got unexpected error %#x.\n", FUNC0());

    set = FUNC4(&guid, NULL);
    FUNC13(set != INVALID_HANDLE_VALUE, "Failed to create device info, error %#x.\n", FUNC0());

    FUNC2(0xdeadbeef);
    ret = FUNC3(set, "Root\\LEGACY_BOGUS\\0000", NULL, NULL, NULL, 0, NULL);
    FUNC13(!ret, "Expected failure.\n");
    FUNC13(FUNC0() == ERROR_INVALID_PARAMETER, "Got unexpected error %#x.\n", FUNC0());

    FUNC2(0xdeadbeef);
    ret = FUNC3(set, "Root\\LEGACY_BOGUS\\0000", &deadbeef, NULL, NULL, 0, NULL);
    FUNC13(!ret, "Expected failure.\n");
    FUNC13(FUNC0() == ERROR_CLASS_MISMATCH, "Got unexpected error %#x.\n", FUNC0());

    FUNC2(0xdeadbeef);
    ret = FUNC3(set, "Root\\LEGACY_BOGUS\\0000", &GUID_NULL, NULL, NULL, 0, NULL);
    FUNC13(!ret, "Expected failure.\n");
    FUNC13(FUNC0() == ERROR_CLASS_MISMATCH, "Got unexpected error %#x.\n", FUNC0());

    ret = FUNC3(set, "Root\\LEGACY_BOGUS\\0000", &guid, NULL, NULL, 0, NULL);
    FUNC13(ret, "Failed to create device, error %#x.\n", FUNC0());

    FUNC10(set, 0, &guid, "ROOT\\LEGACY_BOGUS\\0000");
    FUNC10(set, 1, &guid, NULL);

    FUNC2(0xdeadbeef);
    ret = FUNC3(set, "Root\\LEGACY_BOGUS\\0000", &guid, NULL, NULL, 0, &device);
    FUNC13(!ret, "Expected failure.\n");
    FUNC13(FUNC0() == ERROR_DEVINST_ALREADY_EXISTS, "Got unexpected error %#x.\n", FUNC0());

    FUNC2(0xdeadbeef);
    ret = FUNC3(set, "Root\\LEGACY_BOGUS\\0001", &guid, NULL, NULL, 0, &device);
    FUNC13(!ret, "Expected failure.\n");
    FUNC13(FUNC0() == ERROR_INVALID_USER_BUFFER, "Got unexpected error %#x.\n", FUNC0());

    FUNC10(set, 0, &guid, "ROOT\\LEGACY_BOGUS\\0000");
    FUNC10(set, 1, &guid, "ROOT\\LEGACY_BOGUS\\0001");
    FUNC10(set, 2, &guid, NULL);

    device.cbSize = sizeof(device);
    ret = FUNC3(set, "Root\\LEGACY_BOGUS\\0002", &guid, NULL, NULL, 0, &device);
    FUNC13(ret, "Got unexpected error %#x.\n", FUNC0());
    FUNC13(FUNC1(&device.ClassGuid, &guid), "Got unexpected class %s.\n",
            FUNC16(&device.ClassGuid));
    ret = FUNC8(set, &device, id, sizeof(id), NULL);
    FUNC13(ret, "Got unexpected error %#x.\n", FUNC0());
    FUNC13(!FUNC14(id, "ROOT\\LEGACY_BOGUS\\0002"), "Got unexpected id %s.\n", id);

    FUNC10(set, 0, &guid, "ROOT\\LEGACY_BOGUS\\0000");
    FUNC10(set, 1, &guid, "ROOT\\LEGACY_BOGUS\\0001");
    FUNC10(set, 2, &guid, "ROOT\\LEGACY_BOGUS\\0002");
    FUNC10(set, 3, &guid, NULL);

    ret = FUNC7(set, 0, &ret_device);
    FUNC13(ret, "Failed to enumerate devices, error %#x.\n", FUNC0());
    ret = FUNC5(set, &ret_device);
    FUNC13(ret, "Failed to delete device, error %#x.\n", FUNC0());

    FUNC10(set, 0, &guid, "ROOT\\LEGACY_BOGUS\\0001");
    FUNC10(set, 1, &guid, "ROOT\\LEGACY_BOGUS\\0002");
    FUNC10(set, 2, &guid, NULL);

    ret = FUNC9(set, &device);
    FUNC13(ret, "Got unexpected error %#x.\n", FUNC0());

    FUNC10(set, 0, &guid, "ROOT\\LEGACY_BOGUS\\0001");

    ret = FUNC7(set, 1, &ret_device);
    FUNC13(ret, "Got unexpected error %#x.\n", FUNC0());
    FUNC13(FUNC1(&ret_device.ClassGuid, &guid), "Got unexpected class %s.\n",
            FUNC16(&ret_device.ClassGuid));
    ret = FUNC8(set, &ret_device, id, sizeof(id), NULL);
    FUNC13(!ret, "Expected failure.\n");
    FUNC13(FUNC0() == ERROR_NO_SUCH_DEVINST, "Got unexpected error %#x.\n", FUNC0());
    FUNC13(ret_device.DevInst == device.DevInst, "Expected device node %#x, got %#x.\n",
            device.DevInst, ret_device.DevInst);

    FUNC10(set, 2, &guid, NULL);

    FUNC6(set);

    set = FUNC4(NULL, NULL);
    FUNC13(set != INVALID_HANDLE_VALUE, "Failed to create device info, error %#x.\n", FUNC0());

    FUNC2(0xdeadbeef);
    ret = FUNC3(set, "Root\\LEGACY_BOGUS\\0000", NULL, NULL, NULL, 0, NULL);
    FUNC13(!ret, "Expected failure.\n");
    FUNC13(FUNC0() == ERROR_INVALID_PARAMETER, "Got unexpected error %#x.\n", FUNC0());

    ret = FUNC3(set, "Root\\LEGACY_BOGUS\\deadbeef", &deadbeef, NULL, NULL, 0, NULL);
    FUNC13(ret, "Failed to create device, error %#x.\n", FUNC0());

    ret = FUNC3(set, "Root\\LEGACY_BOGUS\\null", &GUID_NULL, NULL, NULL, 0, NULL);
    FUNC13(ret, "Failed to create device, error %#x.\n", FUNC0());

    ret = FUNC3(set, "Root\\LEGACY_BOGUS\\testguid", &guid, NULL, NULL, 0, NULL);
    FUNC13(ret, "Failed to create device, error %#x.\n", FUNC0());

    FUNC10(set, 0, &deadbeef, "ROOT\\LEGACY_BOGUS\\deadbeef");
    FUNC10(set, 1, &GUID_NULL, "ROOT\\LEGACY_BOGUS\\null");
    FUNC10(set, 2, &guid, "ROOT\\LEGACY_BOGUS\\testguid");
    FUNC10(set, 3, NULL, NULL);

    FUNC12(id, 'x', sizeof(id));
    FUNC11(id, "Root\\LEGACY_BOGUS\\", FUNC15("Root\\LEGACY_BOGUS\\"));
    id[MAX_DEVICE_ID_LEN + 1] = 0;
    FUNC2(0xdeadbeef);
    ret = FUNC3(set, id, &guid, NULL, NULL, 0, NULL);
    FUNC13(!ret, "Expected failure.\n");
    FUNC13(FUNC0() == ERROR_INVALID_DEVINST_NAME, "Got unexpected error %#x.\n", FUNC0());

    id[MAX_DEVICE_ID_LEN] = 0;
    FUNC2(0xdeadbeef);
    ret = FUNC3(set, id, &guid, NULL, NULL, 0, NULL);
    FUNC13(!ret, "Expected failure.\n");
    FUNC13(FUNC0() == ERROR_INVALID_DEVINST_NAME, "Got unexpected error %#x.\n", FUNC0());

    id[MAX_DEVICE_ID_LEN - 1] = 0;
    ret = FUNC3(set, id, &guid, NULL, NULL, 0, NULL);
    FUNC13(ret, "Failed to create device, error %#x.\n", FUNC0());

    FUNC6(set);
}