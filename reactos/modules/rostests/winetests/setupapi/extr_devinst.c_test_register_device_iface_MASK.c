#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ret_iface ;
typedef  int /*<<< orphan*/  iface ;
typedef  int /*<<< orphan*/  device ;
typedef  char WCHAR ;
struct TYPE_13__ {int member_0; } ;
struct TYPE_12__ {int member_0; } ;
typedef  TYPE_1__ SP_DEVINFO_DATA ;
typedef  TYPE_2__ SP_DEVICE_INTERFACE_DATA ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ HDEVINFO ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  DIGCF_ALLCLASSES ; 
 int /*<<< orphan*/  DIGCF_DEVICEINTERFACE ; 
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC3 (scalar_t__,TYPE_1__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC4 (scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__,TYPE_1__*,int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (scalar_t__,TYPE_1__*) ; 
 int FUNC10 (scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  guid ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 

__attribute__((used)) static void FUNC13(void)
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

    set = FUNC7(&guid, NULL, 0, DIGCF_ALLCLASSES);
    FUNC12(set != INVALID_HANDLE_VALUE, "Failed to create device list, error %#x.\n", FUNC0());

    res = FUNC1(HKEY_LOCAL_MACHINE, bogus, &key);
    FUNC12(res == ERROR_FILE_NOT_FOUND, "Key should not exist.\n");

    ret = FUNC2(set, "Root\\LEGACY_BOGUS\\0000", &guid, NULL, NULL, 0, &device);
    FUNC12(ret, "Failed to create device, error %#x.\n", FUNC0());
    ret = FUNC3(set, &device, &guid, NULL, 0, &iface);
    FUNC12(ret, "Failed to create interface, error %#x.\n", FUNC0());
    ret = FUNC3(set, &device, &guid, "removed", 0, &iface);
    FUNC12(ret, "Failed to create interface, error %#x.\n", FUNC0());
    ret = FUNC3(set, &device, &guid, "deleted", 0, &iface);
    FUNC12(ret, "Failed to create interface, error %#x.\n", FUNC0());
    ret = FUNC8(set, &device, 0, NULL, NULL, NULL);
    FUNC12(ret, "Failed to register device, error %#x.\n", FUNC0());

    ret = FUNC6(set, &device, &guid, 1, &iface);
    FUNC12(ret, "Failed to enumerate interfaces, error %#x.\n", FUNC0());
    ret = FUNC10(set, &iface);
    FUNC12(ret, "Failed to delete interface, error %#x.\n", FUNC0());
    ret = FUNC6(set, &device, &guid, 2, &iface);
    FUNC12(ret, "Failed to enumerate interfaces, error %#x.\n", FUNC0());
    ret = FUNC4(set, &iface);
    FUNC12(ret, "Failed to delete interface, error %#x.\n", FUNC0());

    set2 = FUNC7(&guid, NULL, 0, DIGCF_DEVICEINTERFACE);
    FUNC12(set2 != INVALID_HANDLE_VALUE, "Failed to create device list, error %#x.\n", FUNC0());

    FUNC11(set2, NULL, &guid, 0, 0, "\\\\?\\root#legacy_bogus#0000#{6a55b5a4-3f65-11db-b704-0011955c2bdb}");
    FUNC11(set2, NULL, &guid, 1, 0, "\\\\?\\root#legacy_bogus#0000#{6a55b5a4-3f65-11db-b704-0011955c2bdb}\\deleted");
    FUNC11(set2, NULL, &guid, 2, 0, NULL);

    ret = FUNC9(set, &device);
    FUNC12(ret, "Failed to remove device, error %#x.\n", FUNC0());

    FUNC5(set);
    FUNC5(set2);
}