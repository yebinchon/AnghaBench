
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int ULONG ;
typedef int REFGUID ;
typedef int REFCLSID ;
typedef int LPBYTE ;
typedef int LANGID ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 int HKEY_CURRENT_USER ;
 int KEY_READ ;
 int KEY_WRITE ;
 scalar_t__ REG_CREATED_NEW_KEY ;
 int REG_DWORD ;
 int RegCloseKey (int ) ;
 int RegCreateKeyExW (int ,int *,int ,int *,int ,int,int *,int *,scalar_t__*) ;
 int RegSetValueExW (int ,int ,int ,int ,int ,int) ;
 int StringFromGUID2 (int ,int *,int) ;
 int TRACE (char*) ;
 int swprintf (int *,int ,char*,int *,int ,int ,int *) ;
 int szwEnable ;
 int szwFullLangfmt ;
 int szwLngp ;
 char* szwSystemTIPKey ;

__attribute__((used)) static void add_userkey( REFCLSID rclsid, LANGID langid,
                                REFGUID guidProfile)
{
    HKEY key;
    WCHAR buf[39];
    WCHAR buf2[39];
    WCHAR fullkey[168];
    DWORD disposition = 0;
    ULONG res;

    TRACE("\n");

    StringFromGUID2(rclsid, buf, 39);
    StringFromGUID2(guidProfile, buf2, 39);
    swprintf(fullkey,szwFullLangfmt,szwSystemTIPKey,buf,szwLngp,langid,buf2);

    res = RegCreateKeyExW(HKEY_CURRENT_USER,fullkey, 0, ((void*)0), 0,
                   KEY_READ | KEY_WRITE, ((void*)0), &key, &disposition);

    if (!res && disposition == REG_CREATED_NEW_KEY)
    {
        DWORD zero = 0x0;
        RegSetValueExW(key, szwEnable, 0, REG_DWORD, (LPBYTE)&zero, sizeof(DWORD));
    }

    if (!res)
        RegCloseKey(key);
}
