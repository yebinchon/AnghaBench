
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ret_iface ;
typedef int iface ;
typedef int device ;
typedef char WCHAR ;
struct TYPE_13__ {int member_0; } ;
struct TYPE_12__ {int member_0; } ;
typedef TYPE_1__ SP_DEVINFO_DATA ;
typedef TYPE_2__ SP_DEVICE_INTERFACE_DATA ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef scalar_t__ HDEVINFO ;
typedef int BOOL ;


 int DIGCF_ALLCLASSES ;
 int DIGCF_DEVICEINTERFACE ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 int GetLastError () ;
 int HKEY_LOCAL_MACHINE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ RegOpenKeyW (int ,char const*,int *) ;
 int SetupDiCreateDeviceInfoA (scalar_t__,char*,int *,int *,int *,int ,TYPE_1__*) ;
 int SetupDiCreateDeviceInterfaceA (scalar_t__,TYPE_1__*,int *,char*,int ,TYPE_2__*) ;
 int SetupDiDeleteDeviceInterfaceData (scalar_t__,TYPE_2__*) ;
 int SetupDiDestroyDeviceInfoList (scalar_t__) ;
 int SetupDiEnumDeviceInterfaces (scalar_t__,TYPE_1__*,int *,int,TYPE_2__*) ;
 scalar_t__ SetupDiGetClassDevsA (int *,int *,int ,int ) ;
 int SetupDiRegisterDeviceInfo (scalar_t__,TYPE_1__*,int ,int *,int *,int *) ;
 int SetupDiRemoveDevice (scalar_t__,TYPE_1__*) ;
 int SetupDiRemoveDeviceInterface (scalar_t__,TYPE_2__*) ;
 int check_device_iface (scalar_t__,int *,int *,int,int ,char*) ;
 int guid ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_register_device_iface(void)
{
    static const WCHAR bogus[] = {'S','y','s','t','e','m','\\',
     'C','u','r','r','e','n','t','C','o','n','t','r','o','l','S','e','t','\\',
     'E','n','u','m','\\','R','o','o','t','\\',
     'L','E','G','A','C','Y','_','B','O','G','U','S',0};
    SP_DEVICE_INTERFACE_DATA iface = {sizeof(iface)}, ret_iface = {sizeof(ret_iface)};
    SP_DEVINFO_DATA device = {sizeof(device)};
    HDEVINFO set, set2;
    BOOL ret;
    HKEY key;
    LONG res;

    set = SetupDiGetClassDevsA(&guid, ((void*)0), 0, DIGCF_ALLCLASSES);
    ok(set != INVALID_HANDLE_VALUE, "Failed to create device list, error %#x.\n", GetLastError());

    res = RegOpenKeyW(HKEY_LOCAL_MACHINE, bogus, &key);
    ok(res == ERROR_FILE_NOT_FOUND, "Key should not exist.\n");

    ret = SetupDiCreateDeviceInfoA(set, "Root\\LEGACY_BOGUS\\0000", &guid, ((void*)0), ((void*)0), 0, &device);
    ok(ret, "Failed to create device, error %#x.\n", GetLastError());
    ret = SetupDiCreateDeviceInterfaceA(set, &device, &guid, ((void*)0), 0, &iface);
    ok(ret, "Failed to create interface, error %#x.\n", GetLastError());
    ret = SetupDiCreateDeviceInterfaceA(set, &device, &guid, "removed", 0, &iface);
    ok(ret, "Failed to create interface, error %#x.\n", GetLastError());
    ret = SetupDiCreateDeviceInterfaceA(set, &device, &guid, "deleted", 0, &iface);
    ok(ret, "Failed to create interface, error %#x.\n", GetLastError());
    ret = SetupDiRegisterDeviceInfo(set, &device, 0, ((void*)0), ((void*)0), ((void*)0));
    ok(ret, "Failed to register device, error %#x.\n", GetLastError());

    ret = SetupDiEnumDeviceInterfaces(set, &device, &guid, 1, &iface);
    ok(ret, "Failed to enumerate interfaces, error %#x.\n", GetLastError());
    ret = SetupDiRemoveDeviceInterface(set, &iface);
    ok(ret, "Failed to delete interface, error %#x.\n", GetLastError());
    ret = SetupDiEnumDeviceInterfaces(set, &device, &guid, 2, &iface);
    ok(ret, "Failed to enumerate interfaces, error %#x.\n", GetLastError());
    ret = SetupDiDeleteDeviceInterfaceData(set, &iface);
    ok(ret, "Failed to delete interface, error %#x.\n", GetLastError());

    set2 = SetupDiGetClassDevsA(&guid, ((void*)0), 0, DIGCF_DEVICEINTERFACE);
    ok(set2 != INVALID_HANDLE_VALUE, "Failed to create device list, error %#x.\n", GetLastError());

    check_device_iface(set2, ((void*)0), &guid, 0, 0, "\\\\?\\root#legacy_bogus#0000#{6a55b5a4-3f65-11db-b704-0011955c2bdb}");
    check_device_iface(set2, ((void*)0), &guid, 1, 0, "\\\\?\\root#legacy_bogus#0000#{6a55b5a4-3f65-11db-b704-0011955c2bdb}\\deleted");
    check_device_iface(set2, ((void*)0), &guid, 2, 0, ((void*)0));

    ret = SetupDiRemoveDevice(set, &device);
    ok(ret, "Failed to remove device, error %#x.\n", GetLastError());

    SetupDiDestroyDeviceInfoList(set);
    SetupDiDestroyDeviceInfoList(set2);
}
