
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int szData ;
typedef int WCHAR ;
struct TYPE_3__ {int DeviceId; int VendorId; } ;
typedef int LSTATUS ;
typedef int LPBYTE ;
typedef int * HKEY ;
typedef TYPE_1__ DXGI_ADAPTER_DESC ;
typedef int DWORD ;


 int ERROR_SUCCESS ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_READ ;
 int RegCloseKey (int *) ;
 int RegOpenKeyEx (int ,int *,int ,int ,int **) ;
 int RegQueryValueEx (int *,int ,int *,int *,int ,int*) ;
 int TEXT (char*) ;
 int _snwprintf (int *,int,int ,int,...) ;
 int msg_Dbg (int *,char*,int,int *,int *) ;
 int msg_Warn (int *,char*,int,int ) ;
 int wcslen (int *) ;
 scalar_t__ wcsncmp (int *,int *,int ) ;

__attribute__((used)) static HKEY GetAdapterRegistry(vlc_object_t *obj, DXGI_ADAPTER_DESC *adapterDesc)
{
    HKEY hKey;
    WCHAR key[128];
    WCHAR szData[256], lookup[256];
    DWORD len = 256;
    LSTATUS ret;

    _snwprintf(lookup, 256, TEXT("pci\\ven_%04x&dev_%04x"), adapterDesc->VendorId, adapterDesc->DeviceId);
    for (int i=0;;i++)
    {
        _snwprintf(key, 128, TEXT("SYSTEM\\CurrentControlSet\\Control\\Class\\{4d36e968-e325-11ce-bfc1-08002be10318}\\%04d"), i);
        ret = RegOpenKeyEx(HKEY_LOCAL_MACHINE, key, 0, KEY_READ, &hKey);
        if ( ret != ERROR_SUCCESS )
        {
            msg_Warn(obj, "failed to read the %d Display Adapter registry key (%ld)", i, ret);
            return ((void*)0);
        }

        len = sizeof(szData);
        ret = RegQueryValueEx( hKey, TEXT("MatchingDeviceId"), ((void*)0), ((void*)0), (LPBYTE) &szData, &len );
        if ( ret == ERROR_SUCCESS ) {
            if (wcsncmp(lookup, szData, wcslen(lookup)) == 0)
                return hKey;
            msg_Dbg(obj, "different %d device %ls vs %ls", i, lookup, szData);
        }
        else
            msg_Warn(obj, "failed to get the %d MatchingDeviceId (%ld)", i, ret);

        RegCloseKey(hKey);
    }
    return ((void*)0);
}
