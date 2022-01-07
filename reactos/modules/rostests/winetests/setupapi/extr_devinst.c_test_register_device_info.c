
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int device ;
struct TYPE_7__ {int cbSize; int member_0; } ;
typedef TYPE_1__ SP_DEVINFO_DATA ;
typedef int * HDEVINFO ;
typedef int BOOL ;


 scalar_t__ ERROR_INVALID_HANDLE ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ GetLastError () ;
 int * INVALID_HANDLE_VALUE ;
 int SetLastError (int) ;
 int SetupDiCreateDeviceInfoA (int *,char*,int *,int *,int *,int ,TYPE_1__*) ;
 int * SetupDiCreateDeviceInfoList (int *,int *) ;
 int SetupDiDeleteDeviceInfo (int *,TYPE_1__*) ;
 int SetupDiDestroyDeviceInfoList (int *) ;
 scalar_t__ SetupDiEnumDeviceInfo (int *,int ,TYPE_1__*) ;
 int * SetupDiGetClassDevsA (int *,int *,int *,int ) ;
 int SetupDiRegisterDeviceInfo (int *,TYPE_1__*,int ,int *,int *,int *) ;
 int SetupDiRemoveDevice (int *,TYPE_1__*) ;
 int check_device_info (int *,int,int *,char*) ;
 int guid ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_register_device_info(void)
{
    SP_DEVINFO_DATA device = {0};
    BOOL ret;
    HDEVINFO set;
    int i = 0;

    SetLastError(0xdeadbeef);
    ret = SetupDiRegisterDeviceInfo(((void*)0), ((void*)0), 0, ((void*)0), ((void*)0), ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_HANDLE, "Got unexpected error %#x.\n", GetLastError());

    set = SetupDiCreateDeviceInfoList(&guid, ((void*)0));
    ok(set != INVALID_HANDLE_VALUE, "Failed to create device list, error %#x.\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = SetupDiRegisterDeviceInfo(set, ((void*)0), 0, ((void*)0), ((void*)0), ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "Got unexpected error %#x.\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = SetupDiRegisterDeviceInfo(set, &device, 0, ((void*)0), ((void*)0), ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "Got unexpected error %#x.\n", GetLastError());

    device.cbSize = sizeof(device);
    SetLastError(0xdeadbeef);
    ret = SetupDiRegisterDeviceInfo(set, &device, 0, ((void*)0), ((void*)0), ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "Got unexpected error %#x.\n", GetLastError());

    ret = SetupDiCreateDeviceInfoA(set, "Root\\LEGACY_BOGUS\\0000", &guid, ((void*)0), ((void*)0), 0, &device);
    ok(ret, "Failed to create device, error %#x.\n", GetLastError());
    ret = SetupDiRegisterDeviceInfo(set, &device, 0, ((void*)0), ((void*)0), ((void*)0));
    ok(ret, "Failed to register device, error %#x.\n", GetLastError());

    ret = SetupDiCreateDeviceInfoA(set, "Root\\LEGACY_BOGUS\\0001", &guid, ((void*)0), ((void*)0), 0, &device);
    ok(ret, "Failed to create device, error %#x.\n", GetLastError());
    ret = SetupDiRegisterDeviceInfo(set, &device, 0, ((void*)0), ((void*)0), ((void*)0));
    ok(ret, "Failed to register device, error %#x.\n", GetLastError());
    ret = SetupDiRemoveDevice(set, &device);
    ok(ret, "Failed to remove device, error %#x.\n", GetLastError());

    ret = SetupDiCreateDeviceInfoA(set, "Root\\LEGACY_BOGUS\\0002", &guid, ((void*)0), ((void*)0), 0, &device);
    ok(ret, "Failed to create device, error %#x.\n", GetLastError());
    ret = SetupDiRegisterDeviceInfo(set, &device, 0, ((void*)0), ((void*)0), ((void*)0));
    ok(ret, "Failed to register device, error %#x.\n", GetLastError());
    ret = SetupDiDeleteDeviceInfo(set, &device);
    ok(ret, "Failed to remove device, error %#x.\n", GetLastError());

    ret = SetupDiCreateDeviceInfoA(set, "Root\\LEGACY_BOGUS\\0003", &guid, ((void*)0), ((void*)0), 0, &device);
    ok(ret, "Failed to create device, error %#x.\n", GetLastError());

    SetupDiDestroyDeviceInfoList(set);

    set = SetupDiGetClassDevsA(&guid, ((void*)0), ((void*)0), 0);
    ok(set != INVALID_HANDLE_VALUE, "Failed to create device list, error %#x.\n", GetLastError());

    check_device_info(set, 0, &guid, "Root\\LEGACY_BOGUS\\0000");
    check_device_info(set, 1, &guid, "Root\\LEGACY_BOGUS\\0002");
    check_device_info(set, 2, &guid, ((void*)0));

    while (SetupDiEnumDeviceInfo(set, i++, &device))
    {
        ret = SetupDiRemoveDevice(set, &device);
        ok(ret, "Failed to remove device, error %#x.\n", GetLastError());
    }

    SetupDiDestroyDeviceInfoList(set);
}
