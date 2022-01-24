#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  szData ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  DeviceId; int /*<<< orphan*/  VendorId; } ;
typedef  int /*<<< orphan*/  LSTATUS ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  TYPE_1__ DXGI_ADAPTER_DESC ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HKEY FUNC9(vlc_object_t *obj, DXGI_ADAPTER_DESC *adapterDesc)
{
    HKEY hKey;
    WCHAR key[128];
    WCHAR szData[256], lookup[256];
    DWORD len = 256;
    LSTATUS ret;

    FUNC4(lookup, 256, FUNC3("pci\\ven_%04x&dev_%04x"), adapterDesc->VendorId, adapterDesc->DeviceId);
    for (int i=0;;i++)
    {
        FUNC4(key, 128, FUNC3("SYSTEM\\CurrentControlSet\\Control\\Class\\{4d36e968-e325-11ce-bfc1-08002be10318}\\%04d"), i);
        ret = FUNC1(HKEY_LOCAL_MACHINE, key, 0, KEY_READ, &hKey);
        if ( ret != ERROR_SUCCESS )
        {
            FUNC6(obj, "failed to read the %d Display Adapter registry key (%ld)", i, ret);
            return NULL;
        }

        len = sizeof(szData);
        ret = FUNC2( hKey, FUNC3("MatchingDeviceId"), NULL, NULL, (LPBYTE) &szData, &len );
        if ( ret == ERROR_SUCCESS ) {
            if (FUNC8(lookup, szData, FUNC7(lookup)) == 0)
                return hKey;
            FUNC5(obj, "different %d device %ls vs %ls", i, lookup, szData);
        }
        else
            FUNC6(obj, "failed to get the %d MatchingDeviceId (%ld)", i, ret);

        FUNC0(hKey);
    }
    return NULL;
}