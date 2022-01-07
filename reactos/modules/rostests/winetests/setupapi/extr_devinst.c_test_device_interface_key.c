
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int iface ;
typedef int devinfo ;
typedef int buffer ;
struct TYPE_11__ {int member_0; } ;
struct TYPE_10__ {int member_0; } ;
typedef TYPE_1__ SP_DEVINFO_DATA ;
typedef TYPE_2__ SP_DEVICE_INTERFACE_DATA ;
typedef int LONG ;
typedef scalar_t__ HKEY ;
typedef scalar_t__ HDEVINFO ;


 int DIGCF_ALLCLASSES ;
 int ERROR_FILE_NOT_FOUND ;
 int GetLastError () ;
 scalar_t__ HKEY_LOCAL_MACHINE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int KEY_ALL_ACCESS ;
 int REG_SZ ;
 int RegCloseKey (scalar_t__) ;
 int RegOpenKeyA (scalar_t__,char const*,scalar_t__*) ;
 int RegQueryValueA (scalar_t__,int *,char*,int*) ;
 int RegSetValueA (scalar_t__,int *,int ,char*,int) ;
 int SetupDiCreateDeviceInfoA (scalar_t__,char*,int *,int *,int *,int ,TYPE_1__*) ;
 int SetupDiCreateDeviceInterfaceA (scalar_t__,TYPE_1__*,int *,int *,int ,TYPE_2__*) ;
 scalar_t__ SetupDiCreateDeviceInterfaceRegKeyA (scalar_t__,TYPE_2__*,int ,int ,int *,int *) ;
 int SetupDiDeleteDeviceInterfaceRegKey (scalar_t__,TYPE_2__*,int ) ;
 int SetupDiDestroyDeviceInfoList (scalar_t__) ;
 scalar_t__ SetupDiGetClassDevsA (int *,int *,int ,int ) ;
 int SetupDiRemoveDevice (scalar_t__,TYPE_1__*) ;
 int SetupDiRemoveDeviceInterface (scalar_t__,TYPE_2__*) ;
 int guid ;
 int ok (int,char*,...) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void test_device_interface_key(void)
{
    const char keypath[] = "System\\CurrentControlSet\\Control\\DeviceClasses\\"
        "{6a55b5a4-3f65-11db-b704-0011955c2bdb}\\"
        "##?#ROOT#LEGACY_BOGUS#0001#{6a55b5a4-3f65-11db-b704-0011955c2bdb}";
    SP_DEVICE_INTERFACE_DATA iface = { sizeof(iface) };
    SP_DEVINFO_DATA devinfo = { sizeof(devinfo) };
    HKEY parent, key, dikey;
    char buffer[5];
    HDEVINFO set;
    LONG sz, ret;

    set = SetupDiGetClassDevsA(((void*)0), ((void*)0), 0, DIGCF_ALLCLASSES);
    ok(set != INVALID_HANDLE_VALUE, "SetupDiGetClassDevs failed: %#x\n", GetLastError());

    ret = SetupDiCreateDeviceInfoA(set, "ROOT\\LEGACY_BOGUS\\0001", &guid, ((void*)0), ((void*)0), 0, &devinfo);
    ok(ret, "SetupDiCreateDeviceInfo failed: %#x\n", GetLastError());

    ret = SetupDiCreateDeviceInterfaceA(set, &devinfo, &guid, ((void*)0), 0, &iface);
    ok(ret, "SetupDiCreateDeviceInterface failed: %#x\n", GetLastError());

    ret = RegOpenKeyA(HKEY_LOCAL_MACHINE, keypath, &parent);
    ok(!ret, "failed to open device parent key: %u\n", ret);

    ret = RegOpenKeyA(parent, "#\\Device Parameters", &key);
    ok(ret == ERROR_FILE_NOT_FOUND, "key shouldn't exist\n");

    dikey = SetupDiCreateDeviceInterfaceRegKeyA(set, &iface, 0, KEY_ALL_ACCESS, ((void*)0), ((void*)0));
    ok(dikey != INVALID_HANDLE_VALUE, "got error %u\n", GetLastError());

    ret = RegOpenKeyA(parent, "#\\Device Parameters", &key);
    ok(!ret, "key should exist: %u\n", ret);

    ret = RegSetValueA(key, ((void*)0), REG_SZ, "test", 5);
    sz = sizeof(buffer);
    ret = RegQueryValueA(dikey, ((void*)0), buffer, &sz);
    ok(!ret, "RegQueryValue failed: %u\n", ret);
    ok(!strcmp(buffer, "test"), "got wrong data %s\n", buffer);

    RegCloseKey(dikey);
    RegCloseKey(key);

    ret = SetupDiDeleteDeviceInterfaceRegKey(set, &iface, 0);
    ok(ret, "got error %u\n", GetLastError());

    ret = RegOpenKeyA(parent, "#\\Device Parameters", &key);
    ok(ret == ERROR_FILE_NOT_FOUND, "key shouldn't exist\n");

    RegCloseKey(parent);
    SetupDiRemoveDeviceInterface(set, &iface);
    SetupDiRemoveDevice(set, &devinfo);
    SetupDiDestroyDeviceInfoList(set);
}
