
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int id ;
typedef int device ;
struct TYPE_4__ {int cbSize; int member_0; } ;
typedef TYPE_1__ SP_DEVINFO_DATA ;
typedef int * HDEVINFO ;
typedef int DWORD ;
typedef int BOOL ;


 int DICD_GENERATE_ID ;
 char* ERROR_INSUFFICIENT_BUFFER ;
 char* ERROR_INVALID_HANDLE ;
 char* ERROR_INVALID_PARAMETER ;
 char* GetLastError () ;
 int * INVALID_HANDLE_VALUE ;
 int SetLastError (int) ;
 int SetupDiCreateDeviceInfoA (int *,char*,int *,int *,int *,int ,TYPE_1__*) ;
 int * SetupDiCreateDeviceInfoList (int *,int *) ;
 int SetupDiDestroyDeviceInfoList (int *) ;
 int SetupDiGetDeviceInstanceIdA (int *,TYPE_1__*,char*,int,int *) ;
 int guid ;
 int ok (int,char*,...) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void test_get_device_instance_id(void)
{
    BOOL ret;
    HDEVINFO set;
    SP_DEVINFO_DATA device = {0};
    char id[200];
    DWORD size;

    SetLastError(0xdeadbeef);
    ret = SetupDiGetDeviceInstanceIdA(((void*)0), ((void*)0), ((void*)0), 0, ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_HANDLE, "Got unexpected error %#x.\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = SetupDiGetDeviceInstanceIdA(((void*)0), &device, ((void*)0), 0, ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_HANDLE, "Got unexpected error %#x.\n", GetLastError());

    set = SetupDiCreateDeviceInfoList(&guid, ((void*)0));
    ok(set != INVALID_HANDLE_VALUE, "Failed to create device list, error %#x.\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = SetupDiGetDeviceInstanceIdA(set, ((void*)0), ((void*)0), 0, ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "Got unexpected error %#x.\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = SetupDiGetDeviceInstanceIdA(set, &device, ((void*)0), 0, ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "Got unexpected error %#x.\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = SetupDiGetDeviceInstanceIdA(set, &device, ((void*)0), 0, &size);
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "Got unexpected error %#x.\n", GetLastError());

    device.cbSize = sizeof(device);
    SetLastError(0xdeadbeef);
    ret = SetupDiGetDeviceInstanceIdA(set, &device, ((void*)0), 0, &size);
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "Got unexpected error %#x.\n", GetLastError());

    ret = SetupDiCreateDeviceInfoA(set, "Root\\LEGACY_BOGUS\\0000", &guid, ((void*)0), ((void*)0), 0, &device);
    ok(ret, "Failed to create device, error %#x.\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = SetupDiGetDeviceInstanceIdA(set, &device, ((void*)0), 0, &size);
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER, "Got unexpected error %#x.\n", GetLastError());

    ret = SetupDiGetDeviceInstanceIdA(set, &device, id, sizeof(id), ((void*)0));
    ok(ret, "Failed to get device id, error %#x.\n", GetLastError());
    ok(!strcmp(id, "ROOT\\LEGACY_BOGUS\\0000"), "Got unexpected id %s.\n", id);

    ret = SetupDiCreateDeviceInfoA(set, "LEGACY_BOGUS", &guid, ((void*)0), ((void*)0), DICD_GENERATE_ID, &device);
    ok(ret, "SetupDiCreateDeviceInfoA failed: %08x\n", GetLastError());

    ret = SetupDiGetDeviceInstanceIdA(set, &device, id, sizeof(id), ((void*)0));
    ok(ret, "Failed to get device id, error %#x.\n", GetLastError());
    ok(!strcmp(id, "ROOT\\LEGACY_BOGUS\\0001"), "Got unexpected id %s.\n", id);

    SetupDiDestroyDeviceInfoList(set);
}
