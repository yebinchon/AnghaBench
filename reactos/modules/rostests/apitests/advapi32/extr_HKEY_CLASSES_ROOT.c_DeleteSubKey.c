
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;
typedef int LONG ;
typedef int HKEY ;


 int ERROR_SUCCESS ;
 int MAXIMUM_ALLOWED ;
 int RegCloseKey (int ) ;
 int RegDeleteKeyW (int ,int ) ;
 int RegOpenKeyExW (int ,int ,int ,int ,int *) ;
 int ok_dec (int ,int ) ;

__attribute__((used)) static
LONG
DeleteSubKey(HKEY hKey, LPWSTR Root, LPWSTR SubKey)
{
    HKEY RootKey;
    LONG ErrorCode;

    ErrorCode = RegOpenKeyExW(
        hKey,
        Root,
        0,
        MAXIMUM_ALLOWED,
        &RootKey);
    ok_dec(ErrorCode, ERROR_SUCCESS);
    ErrorCode = RegDeleteKeyW(RootKey, SubKey);
    RegCloseKey(RootKey);

    return ErrorCode;
}
