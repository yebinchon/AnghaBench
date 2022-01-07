
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int iface ;
typedef int device ;
struct TYPE_16__ {int member_0; } ;
struct TYPE_15__ {int cbSize; int DevicePath; } ;
struct TYPE_14__ {int member_0; int cbSize; int ClassGuid; } ;
typedef TYPE_1__ SP_DEVINFO_DATA ;
typedef TYPE_2__ SP_DEVICE_INTERFACE_DETAIL_DATA_A ;
typedef TYPE_3__ SP_DEVICE_INTERFACE_DATA ;
typedef int * HDEVINFO ;
typedef int DWORD ;
typedef int BOOL ;


 int * DevicePath ;
 int ERROR_INSUFFICIENT_BUFFER ;
 int ERROR_INVALID_HANDLE ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_INVALID_USER_BUFFER ;
 int FIELD_OFFSET (int ,int ) ;
 int GetLastError () ;
 int * INVALID_HANDLE_VALUE ;
 int IsEqualGUID (int *,int *) ;
 int SP_DEVICE_INTERFACE_DETAIL_DATA_W ;
 int SetLastError (int) ;
 int SetupDiCreateDeviceInfoA (int *,char*,int *,int *,int *,int ,TYPE_1__*) ;
 int * SetupDiCreateDeviceInfoList (int *,int *) ;
 int SetupDiCreateDeviceInterfaceA (int *,TYPE_1__*,int *,int *,int ,TYPE_3__*) ;
 int SetupDiDestroyDeviceInfoList (int *) ;
 int SetupDiGetDeviceInterfaceDetailA (int *,TYPE_3__*,TYPE_2__*,int,int*,int *) ;
 int SetupDiGetDeviceInterfaceDetailW (int *,TYPE_3__*,int *,int ,int*,TYPE_1__*) ;
 int guid ;
 TYPE_2__* heap_alloc (int) ;
 int heap_free (TYPE_2__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,...) ;
 int strcasecmp (char const*,int) ;
 int strlen (char const*) ;
 int wine_dbgstr_guid (int *) ;

__attribute__((used)) static void test_device_iface_detail(void)
{
    static const char path[] = "\\\\?\\root#legacy_bogus#0000#{6a55b5a4-3f65-11db-b704-0011955c2bdb}";
    SP_DEVICE_INTERFACE_DETAIL_DATA_A *detail;
    SP_DEVICE_INTERFACE_DATA iface = {sizeof(iface)};
    SP_DEVINFO_DATA device = {sizeof(device)};
    DWORD size = 0, expectedsize;
    HDEVINFO set;
    BOOL ret;

    SetLastError(0xdeadbeef);
    ret = SetupDiGetDeviceInterfaceDetailA(((void*)0), ((void*)0), ((void*)0), 0, ((void*)0), ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_HANDLE, "Got unexpected error %#x.\n", GetLastError());

    set = SetupDiCreateDeviceInfoList(&guid, ((void*)0));
    ok(set != INVALID_HANDLE_VALUE, "Failed to create device list, error %#x.\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = SetupDiGetDeviceInterfaceDetailA(set, ((void*)0), ((void*)0), 0, ((void*)0), ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "Got unexpected error %#x.\n", GetLastError());

    ret = SetupDiCreateDeviceInfoA(set, "ROOT\\LEGACY_BOGUS\\0000", &guid, ((void*)0), ((void*)0), 0, &device);
    ok(ret, "Failed to create device, error %#x.\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = SetupDiCreateDeviceInterfaceA(set, &device, &guid, ((void*)0), 0, &iface);
    ok(ret, "Failed to create interface, error %#x.\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = SetupDiGetDeviceInterfaceDetailA(set, &iface, ((void*)0), 0, ((void*)0), ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER, "Got unexpected error %#x.\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = SetupDiGetDeviceInterfaceDetailA(set, &iface, ((void*)0), 100, ((void*)0), ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_USER_BUFFER, "Got unexpected error %#x.\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = SetupDiGetDeviceInterfaceDetailA(set, &iface, ((void*)0), 0, &size, ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER, "Got unexpected error %#x.\n", GetLastError());

    detail = heap_alloc(size);
    expectedsize = FIELD_OFFSET(SP_DEVICE_INTERFACE_DETAIL_DATA_W, DevicePath[strlen(path) + 1]);

    detail->cbSize = 0;
    SetLastError(0xdeadbeef);
    ret = SetupDiGetDeviceInterfaceDetailA(set, &iface, detail, size, &size, ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_USER_BUFFER, "Got unexpected error %#x.\n", GetLastError());

    detail->cbSize = size;
    SetLastError(0xdeadbeef);
    ret = SetupDiGetDeviceInterfaceDetailA(set, &iface, detail, size, &size, ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_USER_BUFFER, "Got unexpected error %#x.\n", GetLastError());

    detail->cbSize = sizeof(SP_DEVICE_INTERFACE_DETAIL_DATA_A);
    SetLastError(0xdeadbeef);
    ret = SetupDiGetDeviceInterfaceDetailA(set, &iface, detail, size, &size, ((void*)0));
    ok(ret, "Failed to get interface detail, error %#x.\n", GetLastError());
    ok(!strcasecmp(path, detail->DevicePath), "Got unexpected path %s.\n", detail->DevicePath);

    ret = SetupDiGetDeviceInterfaceDetailW(set, &iface, ((void*)0), 0, &size, ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER, "Got unexpected error %#x.\n", GetLastError());
    ok(size == expectedsize, "Got unexpected size %d.\n", size);

    memset(&device, 0, sizeof(device));
    device.cbSize = sizeof(device);
    ret = SetupDiGetDeviceInterfaceDetailW(set, &iface, ((void*)0), 0, &size, &device);
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER, "Got unexpected error %#x.\n", GetLastError());
    ok(IsEqualGUID(&device.ClassGuid, &guid), "Got unexpected class %s.\n", wine_dbgstr_guid(&device.ClassGuid));

    heap_free(detail);
    SetupDiDestroyDeviceInfoList(set);
}
