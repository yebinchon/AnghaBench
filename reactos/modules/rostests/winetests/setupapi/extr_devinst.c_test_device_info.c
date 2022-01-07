
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int ret_device ;
typedef int id ;
typedef int device ;
struct TYPE_15__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; } ;
struct TYPE_17__ {int member_0; int member_1; int member_2; TYPE_1__ member_3; } ;
struct TYPE_16__ {int member_0; int cbSize; int DevInst; int ClassGuid; } ;
typedef TYPE_2__ SP_DEVINFO_DATA ;
typedef int * HDEVINFO ;
typedef TYPE_3__ GUID ;
typedef int BOOL ;


 char* ERROR_CLASS_MISMATCH ;
 char* ERROR_DEVINST_ALREADY_EXISTS ;
 char* ERROR_INVALID_DEVINST_NAME ;
 char* ERROR_INVALID_HANDLE ;
 char* ERROR_INVALID_PARAMETER ;
 char* ERROR_INVALID_USER_BUFFER ;
 char* ERROR_NO_SUCH_DEVINST ;
 TYPE_3__ const GUID_NULL ;
 char* GetLastError () ;
 int * INVALID_HANDLE_VALUE ;
 int IsEqualGUID (int *,TYPE_3__ const*) ;
 int MAX_DEVICE_ID_LEN ;
 int SetLastError (int) ;
 int SetupDiCreateDeviceInfoA (int *,char*,TYPE_3__ const*,int *,int *,int ,TYPE_2__*) ;
 int * SetupDiCreateDeviceInfoList (TYPE_3__ const*,int *) ;
 int SetupDiDeleteDeviceInfo (int *,TYPE_2__*) ;
 int SetupDiDestroyDeviceInfoList (int *) ;
 int SetupDiEnumDeviceInfo (int *,int,TYPE_2__*) ;
 int SetupDiGetDeviceInstanceIdA (int *,TYPE_2__*,char*,int,int *) ;
 int SetupDiRemoveDevice (int *,TYPE_2__*) ;
 int check_device_info (int *,int,TYPE_3__ const*,char*) ;
 TYPE_3__ const guid ;
 int memcpy (char*,char*,int ) ;
 int memset (char*,char,int) ;
 int ok (int,char*,...) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;
 char* wine_dbgstr_guid (int *) ;

__attribute__((used)) static void test_device_info(void)
{
    static const GUID deadbeef = {0xdeadbeef,0xdead,0xbeef,{0xde,0xad,0xbe,0xef,0xde,0xad,0xbe,0xef}};
    SP_DEVINFO_DATA device = {0}, ret_device = {sizeof(ret_device)};
    char id[MAX_DEVICE_ID_LEN + 2];
    HDEVINFO set;
    BOOL ret;

    SetLastError(0xdeadbeef);
    ret = SetupDiCreateDeviceInfoA(((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0, ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_DEVINST_NAME, "Got unexpected error %#x.\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = SetupDiCreateDeviceInfoA(((void*)0), "Root\\LEGACY_BOGUS\\0000", ((void*)0), ((void*)0), ((void*)0), 0, ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_HANDLE, "Got unexpected error %#x.\n", GetLastError());

    set = SetupDiCreateDeviceInfoList(&guid, ((void*)0));
    ok(set != INVALID_HANDLE_VALUE, "Failed to create device info, error %#x.\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = SetupDiCreateDeviceInfoA(set, "Root\\LEGACY_BOGUS\\0000", ((void*)0), ((void*)0), ((void*)0), 0, ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "Got unexpected error %#x.\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = SetupDiCreateDeviceInfoA(set, "Root\\LEGACY_BOGUS\\0000", &deadbeef, ((void*)0), ((void*)0), 0, ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_CLASS_MISMATCH, "Got unexpected error %#x.\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = SetupDiCreateDeviceInfoA(set, "Root\\LEGACY_BOGUS\\0000", &GUID_NULL, ((void*)0), ((void*)0), 0, ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_CLASS_MISMATCH, "Got unexpected error %#x.\n", GetLastError());

    ret = SetupDiCreateDeviceInfoA(set, "Root\\LEGACY_BOGUS\\0000", &guid, ((void*)0), ((void*)0), 0, ((void*)0));
    ok(ret, "Failed to create device, error %#x.\n", GetLastError());

    check_device_info(set, 0, &guid, "ROOT\\LEGACY_BOGUS\\0000");
    check_device_info(set, 1, &guid, ((void*)0));

    SetLastError(0xdeadbeef);
    ret = SetupDiCreateDeviceInfoA(set, "Root\\LEGACY_BOGUS\\0000", &guid, ((void*)0), ((void*)0), 0, &device);
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_DEVINST_ALREADY_EXISTS, "Got unexpected error %#x.\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = SetupDiCreateDeviceInfoA(set, "Root\\LEGACY_BOGUS\\0001", &guid, ((void*)0), ((void*)0), 0, &device);
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_USER_BUFFER, "Got unexpected error %#x.\n", GetLastError());

    check_device_info(set, 0, &guid, "ROOT\\LEGACY_BOGUS\\0000");
    check_device_info(set, 1, &guid, "ROOT\\LEGACY_BOGUS\\0001");
    check_device_info(set, 2, &guid, ((void*)0));

    device.cbSize = sizeof(device);
    ret = SetupDiCreateDeviceInfoA(set, "Root\\LEGACY_BOGUS\\0002", &guid, ((void*)0), ((void*)0), 0, &device);
    ok(ret, "Got unexpected error %#x.\n", GetLastError());
    ok(IsEqualGUID(&device.ClassGuid, &guid), "Got unexpected class %s.\n",
            wine_dbgstr_guid(&device.ClassGuid));
    ret = SetupDiGetDeviceInstanceIdA(set, &device, id, sizeof(id), ((void*)0));
    ok(ret, "Got unexpected error %#x.\n", GetLastError());
    ok(!strcmp(id, "ROOT\\LEGACY_BOGUS\\0002"), "Got unexpected id %s.\n", id);

    check_device_info(set, 0, &guid, "ROOT\\LEGACY_BOGUS\\0000");
    check_device_info(set, 1, &guid, "ROOT\\LEGACY_BOGUS\\0001");
    check_device_info(set, 2, &guid, "ROOT\\LEGACY_BOGUS\\0002");
    check_device_info(set, 3, &guid, ((void*)0));

    ret = SetupDiEnumDeviceInfo(set, 0, &ret_device);
    ok(ret, "Failed to enumerate devices, error %#x.\n", GetLastError());
    ret = SetupDiDeleteDeviceInfo(set, &ret_device);
    ok(ret, "Failed to delete device, error %#x.\n", GetLastError());

    check_device_info(set, 0, &guid, "ROOT\\LEGACY_BOGUS\\0001");
    check_device_info(set, 1, &guid, "ROOT\\LEGACY_BOGUS\\0002");
    check_device_info(set, 2, &guid, ((void*)0));

    ret = SetupDiRemoveDevice(set, &device);
    ok(ret, "Got unexpected error %#x.\n", GetLastError());

    check_device_info(set, 0, &guid, "ROOT\\LEGACY_BOGUS\\0001");

    ret = SetupDiEnumDeviceInfo(set, 1, &ret_device);
    ok(ret, "Got unexpected error %#x.\n", GetLastError());
    ok(IsEqualGUID(&ret_device.ClassGuid, &guid), "Got unexpected class %s.\n",
            wine_dbgstr_guid(&ret_device.ClassGuid));
    ret = SetupDiGetDeviceInstanceIdA(set, &ret_device, id, sizeof(id), ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_NO_SUCH_DEVINST, "Got unexpected error %#x.\n", GetLastError());
    ok(ret_device.DevInst == device.DevInst, "Expected device node %#x, got %#x.\n",
            device.DevInst, ret_device.DevInst);

    check_device_info(set, 2, &guid, ((void*)0));

    SetupDiDestroyDeviceInfoList(set);

    set = SetupDiCreateDeviceInfoList(((void*)0), ((void*)0));
    ok(set != INVALID_HANDLE_VALUE, "Failed to create device info, error %#x.\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = SetupDiCreateDeviceInfoA(set, "Root\\LEGACY_BOGUS\\0000", ((void*)0), ((void*)0), ((void*)0), 0, ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "Got unexpected error %#x.\n", GetLastError());

    ret = SetupDiCreateDeviceInfoA(set, "Root\\LEGACY_BOGUS\\deadbeef", &deadbeef, ((void*)0), ((void*)0), 0, ((void*)0));
    ok(ret, "Failed to create device, error %#x.\n", GetLastError());

    ret = SetupDiCreateDeviceInfoA(set, "Root\\LEGACY_BOGUS\\null", &GUID_NULL, ((void*)0), ((void*)0), 0, ((void*)0));
    ok(ret, "Failed to create device, error %#x.\n", GetLastError());

    ret = SetupDiCreateDeviceInfoA(set, "Root\\LEGACY_BOGUS\\testguid", &guid, ((void*)0), ((void*)0), 0, ((void*)0));
    ok(ret, "Failed to create device, error %#x.\n", GetLastError());

    check_device_info(set, 0, &deadbeef, "ROOT\\LEGACY_BOGUS\\deadbeef");
    check_device_info(set, 1, &GUID_NULL, "ROOT\\LEGACY_BOGUS\\null");
    check_device_info(set, 2, &guid, "ROOT\\LEGACY_BOGUS\\testguid");
    check_device_info(set, 3, ((void*)0), ((void*)0));

    memset(id, 'x', sizeof(id));
    memcpy(id, "Root\\LEGACY_BOGUS\\", strlen("Root\\LEGACY_BOGUS\\"));
    id[MAX_DEVICE_ID_LEN + 1] = 0;
    SetLastError(0xdeadbeef);
    ret = SetupDiCreateDeviceInfoA(set, id, &guid, ((void*)0), ((void*)0), 0, ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_DEVINST_NAME, "Got unexpected error %#x.\n", GetLastError());

    id[MAX_DEVICE_ID_LEN] = 0;
    SetLastError(0xdeadbeef);
    ret = SetupDiCreateDeviceInfoA(set, id, &guid, ((void*)0), ((void*)0), 0, ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_DEVINST_NAME, "Got unexpected error %#x.\n", GetLastError());

    id[MAX_DEVICE_ID_LEN - 1] = 0;
    ret = SetupDiCreateDeviceInfoA(set, id, &guid, ((void*)0), ((void*)0), 0, ((void*)0));
    ok(ret, "Failed to create device, error %#x.\n", GetLastError());

    SetupDiDestroyDeviceInfoList(set);
}
