
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int iface ;
typedef int device ;
typedef int buffer ;
struct TYPE_16__ {int member_0; scalar_t__ Flags; int InterfaceClassGuid; } ;
struct TYPE_15__ {int cbSize; scalar_t__ DevicePath; } ;
struct TYPE_14__ {int cbSize; int member_0; } ;
typedef TYPE_1__ SP_DEVINFO_DATA ;
typedef TYPE_2__ SP_DEVICE_INTERFACE_DETAIL_DATA_A ;
typedef TYPE_3__ SP_DEVICE_INTERFACE_DATA ;
typedef int * HDEVINFO ;
typedef int BOOL ;


 scalar_t__ ERROR_INVALID_HANDLE ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_INVALID_USER_BUFFER ;
 scalar_t__ GetLastError () ;
 int * INVALID_HANDLE_VALUE ;
 int IsEqualGUID (int *,int *) ;
 int SPINT_REMOVED ;
 int SetLastError (int) ;
 int SetupDiCreateDeviceInfoA (int *,char*,int *,int *,int *,int ,TYPE_1__*) ;
 int * SetupDiCreateDeviceInfoList (int *,int *) ;
 int SetupDiCreateDeviceInterfaceA (int *,TYPE_1__*,int *,char*,int ,TYPE_3__*) ;
 int SetupDiDeleteDeviceInterfaceData (int *,TYPE_3__*) ;
 int SetupDiDestroyDeviceInfoList (int *) ;
 int SetupDiEnumDeviceInterfaces (int *,TYPE_1__*,int *,int ,TYPE_3__*) ;
 int SetupDiGetDeviceInterfaceDetailA (int *,TYPE_3__*,TYPE_2__*,int,int *,int *) ;
 int SetupDiRemoveDeviceInterface (int *,TYPE_3__*) ;
 int check_device_iface (int *,TYPE_1__*,int *,int,int ,char*) ;
 int guid ;
 int guid2 ;
 int ok (int,char*,...) ;
 int strcasecmp (scalar_t__,char*) ;
 scalar_t__ wine_dbgstr_guid (int *) ;

__attribute__((used)) static void test_device_iface(void)
{
    char buffer[200];
    SP_DEVICE_INTERFACE_DETAIL_DATA_A *detail = (SP_DEVICE_INTERFACE_DETAIL_DATA_A *)buffer;
    SP_DEVICE_INTERFACE_DATA iface = {sizeof(iface)};
    SP_DEVINFO_DATA device = {0};
    BOOL ret;
    HDEVINFO set;

    detail->cbSize = sizeof(*detail);

    SetLastError(0xdeadbeef);
    ret = SetupDiCreateDeviceInterfaceA(((void*)0), ((void*)0), ((void*)0), ((void*)0), 0, ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_HANDLE, "Got unexpected error %#x.\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = SetupDiCreateDeviceInterfaceA(((void*)0), ((void*)0), &guid, ((void*)0), 0, ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_HANDLE, "Got unexpected error %#x.\n", GetLastError());

    set = SetupDiCreateDeviceInfoList(&guid, ((void*)0));
    ok(set != INVALID_HANDLE_VALUE, "Failed to create device list, error %#x.\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = SetupDiCreateDeviceInterfaceA(set, ((void*)0), ((void*)0), ((void*)0), 0, ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "Got unexpected error %#x.\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = SetupDiCreateDeviceInterfaceA(set, &device, ((void*)0), ((void*)0), 0, ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "Got unexpected error %#x.\n", GetLastError());

    device.cbSize = sizeof(device);
    ret = SetupDiCreateDeviceInfoA(set, "ROOT\\LEGACY_BOGUS\\0000", &guid, ((void*)0), ((void*)0), 0, &device);
    ok(ret, "Failed to create device, error %#x.\n", GetLastError());

    check_device_iface(set, &device, &guid, 0, 0, ((void*)0));

    SetLastError(0xdeadbeef);
    ret = SetupDiCreateDeviceInterfaceA(set, &device, ((void*)0), ((void*)0), 0, ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_USER_BUFFER, "Got unexpected error %#x.\n", GetLastError());

    ret = SetupDiCreateDeviceInterfaceA(set, &device, &guid, ((void*)0), 0, ((void*)0));
    ok(ret, "Failed to create interface, error %#x.\n", GetLastError());

    check_device_iface(set, &device, &guid, 0, 0, "\\\\?\\ROOT#LEGACY_BOGUS#0000#{6A55B5A4-3F65-11DB-B704-0011955C2BDB}");
    check_device_iface(set, &device, &guid, 1, 0, ((void*)0));


    ret = SetupDiCreateDeviceInterfaceA(set, &device, &guid, ((void*)0), 0, ((void*)0));
    ok(ret, "Failed to create interface, error %#x.\n", GetLastError());

    check_device_iface(set, &device, &guid, 0, 0, "\\\\?\\ROOT#LEGACY_BOGUS#0000#{6A55B5A4-3F65-11DB-B704-0011955C2BDB}");
    check_device_iface(set, &device, &guid, 1, 0, ((void*)0));

    ret = SetupDiCreateDeviceInterfaceA(set, &device, &guid, "Oogah", 0, ((void*)0));
    ok(ret, "Failed to create interface, error %#x.\n", GetLastError());

    check_device_iface(set, &device, &guid, 0, 0, "\\\\?\\ROOT#LEGACY_BOGUS#0000#{6A55B5A4-3F65-11DB-B704-0011955C2BDB}");
    check_device_iface(set, &device, &guid, 1, 0, "\\\\?\\ROOT#LEGACY_BOGUS#0000#{6A55B5A4-3F65-11DB-B704-0011955C2BDB}\\Oogah");
    check_device_iface(set, &device, &guid, 2, 0, ((void*)0));

    ret = SetupDiCreateDeviceInterfaceA(set, &device, &guid, "test", 0, &iface);
    ok(ret, "Failed to create interface, error %#x.\n", GetLastError());
    ok(IsEqualGUID(&iface.InterfaceClassGuid, &guid), "Got unexpected class %s.\n",
            wine_dbgstr_guid(&iface.InterfaceClassGuid));
    ok(iface.Flags == 0, "Got unexpected flags %#x.\n", iface.Flags);
    ret = SetupDiGetDeviceInterfaceDetailA(set, &iface, detail, sizeof(buffer), ((void*)0), ((void*)0));
    ok(ret, "Failed to get interface detail, error %#x.\n", GetLastError());
    ok(!strcasecmp(detail->DevicePath, "\\\\?\\ROOT#LEGACY_BOGUS#0000#{6A55B5A4-3F65-11DB-B704-0011955C2BDB}\\test"),
            "Got unexpected path %s.\n", detail->DevicePath);

    check_device_iface(set, &device, &guid, 0, 0, "\\\\?\\ROOT#LEGACY_BOGUS#0000#{6A55B5A4-3F65-11DB-B704-0011955C2BDB}");
    check_device_iface(set, &device, &guid, 1, 0, "\\\\?\\ROOT#LEGACY_BOGUS#0000#{6A55B5A4-3F65-11DB-B704-0011955C2BDB}\\Oogah");
    check_device_iface(set, &device, &guid, 2, 0, "\\\\?\\ROOT#LEGACY_BOGUS#0000#{6A55B5A4-3F65-11DB-B704-0011955C2BDB}\\test");
    check_device_iface(set, &device, &guid, 3, 0, ((void*)0));

    ret = SetupDiCreateDeviceInterfaceA(set, &device, &guid2, ((void*)0), 0, ((void*)0));
    ok(ret, "Failed to create interface, error %#x.\n", GetLastError());

    check_device_iface(set, &device, &guid2, 0, 0, "\\\\?\\ROOT#LEGACY_BOGUS#0000#{6A55B5A5-3F65-11DB-B704-0011955C2BDB}");
    check_device_iface(set, &device, &guid2, 1, 0, ((void*)0));

    ret = SetupDiEnumDeviceInterfaces(set, &device, &guid2, 0, &iface);
    ok(ret, "Failed to enumerate interfaces, error %#x.\n", GetLastError());
    ret = SetupDiRemoveDeviceInterface(set, &iface);
    ok(ret, "Failed to remove interface, error %#x.\n", GetLastError());

    check_device_iface(set, &device, &guid2, 0, SPINT_REMOVED, "\\\\?\\ROOT#LEGACY_BOGUS#0000#{6A55B5A5-3F65-11DB-B704-0011955C2BDB}");
    check_device_iface(set, &device, &guid2, 1, 0, ((void*)0));

    ret = SetupDiEnumDeviceInterfaces(set, &device, &guid, 0, &iface);
    ok(ret, "Failed to enumerate interfaces, error %#x.\n", GetLastError());
    ret = SetupDiDeleteDeviceInterfaceData(set, &iface);
    ok(ret, "Failed to delete interface, error %#x.\n", GetLastError());

    check_device_iface(set, &device, &guid, 0, 0, "\\\\?\\ROOT#LEGACY_BOGUS#0000#{6A55B5A4-3F65-11DB-B704-0011955C2BDB}\\Oogah");
    check_device_iface(set, &device, &guid, 1, 0, "\\\\?\\ROOT#LEGACY_BOGUS#0000#{6A55B5A4-3F65-11DB-B704-0011955C2BDB}\\test");
    check_device_iface(set, &device, &guid, 2, 0, ((void*)0));

    ret = SetupDiDestroyDeviceInfoList(set);
    ok(ret, "Failed to destroy device list, error %#x.\n", GetLastError());
}
