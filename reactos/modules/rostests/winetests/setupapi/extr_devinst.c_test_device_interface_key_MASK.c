#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  iface ;
typedef  int /*<<< orphan*/  devinfo ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_11__ {int member_0; } ;
struct TYPE_10__ {int member_0; } ;
typedef  TYPE_1__ SP_DEVINFO_DATA ;
typedef  TYPE_2__ SP_DEVICE_INTERFACE_DATA ;
typedef  int LONG ;
typedef  scalar_t__ HKEY ;
typedef  scalar_t__ HDEVINFO ;

/* Variables and functions */
 int /*<<< orphan*/  DIGCF_ALLCLASSES ; 
 int ERROR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ HKEY_LOCAL_MACHINE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__,char const*,scalar_t__*) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ *,char*,int*) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (scalar_t__,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC6 (scalar_t__,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC7 (scalar_t__,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (scalar_t__,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  guid ; 
 int /*<<< orphan*/  FUNC13 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 

__attribute__((used)) static void FUNC15(void)
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

    set = FUNC10(NULL, NULL, 0, DIGCF_ALLCLASSES);
    FUNC13(set != INVALID_HANDLE_VALUE, "SetupDiGetClassDevs failed: %#x\n", FUNC0());

    ret = FUNC5(set, "ROOT\\LEGACY_BOGUS\\0001", &guid, NULL, NULL, 0, &devinfo);
    FUNC13(ret, "SetupDiCreateDeviceInfo failed: %#x\n", FUNC0());

    ret = FUNC6(set, &devinfo, &guid, NULL, 0, &iface);
    FUNC13(ret, "SetupDiCreateDeviceInterface failed: %#x\n", FUNC0());

    ret = FUNC2(HKEY_LOCAL_MACHINE, keypath, &parent);
    FUNC13(!ret, "failed to open device parent key: %u\n", ret);

    ret = FUNC2(parent, "#\\Device Parameters", &key);
    FUNC13(ret == ERROR_FILE_NOT_FOUND, "key shouldn't exist\n");

    dikey = FUNC7(set, &iface, 0, KEY_ALL_ACCESS, NULL, NULL);
    FUNC13(dikey != INVALID_HANDLE_VALUE, "got error %u\n", FUNC0());

    ret = FUNC2(parent, "#\\Device Parameters", &key);
    FUNC13(!ret, "key should exist: %u\n", ret);

    ret = FUNC4(key, NULL, REG_SZ, "test", 5);
    sz = sizeof(buffer);
    ret = FUNC3(dikey, NULL, buffer, &sz);
    FUNC13(!ret, "RegQueryValue failed: %u\n", ret);
    FUNC13(!FUNC14(buffer, "test"), "got wrong data %s\n", buffer);

    FUNC1(dikey);
    FUNC1(key);

    ret = FUNC8(set, &iface, 0);
    FUNC13(ret, "got error %u\n", FUNC0());

    ret = FUNC2(parent, "#\\Device Parameters", &key);
    FUNC13(ret == ERROR_FILE_NOT_FOUND, "key shouldn't exist\n");

    FUNC1(parent);
    FUNC12(set, &iface);
    FUNC11(set, &devinfo);
    FUNC9(set);
}