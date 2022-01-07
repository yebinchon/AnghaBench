
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_3__ {scalar_t__ pwszFunctionName; scalar_t__ pwszDLLName; } ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef TYPE_1__ CRYPT_TRUST_REG_ENTRY ;
typedef int BYTE ;


 char const* Dll ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_WRITE ;
 int MAX_PATH ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyExW (int ,char*,int ,int *,int ,int ,int *,int *,int *) ;
 scalar_t__ RegSetValueExW (int ,char const*,int ,int ,int *,int) ;
 char* Trust ;
 int lstrcatW (char*,char const*) ;
 int lstrlenW (scalar_t__) ;

__attribute__((used)) static LONG WINTRUST_WriteProviderToReg(WCHAR* GuidString,
                                        const WCHAR* FunctionType,
                                        CRYPT_TRUST_REG_ENTRY RegEntry)
{
    static const WCHAR Function[] = {'$','F','u','n','c','t','i','o','n', 0};
    WCHAR ProvKey[MAX_PATH];
    HKEY Key;
    LONG Res = ERROR_SUCCESS;


    ProvKey[0]='\0';
    lstrcatW(ProvKey, Trust);
    lstrcatW(ProvKey, FunctionType);
    lstrcatW(ProvKey, GuidString);

    if (!RegEntry.pwszDLLName || !RegEntry.pwszFunctionName)
        return ERROR_INVALID_PARAMETER;

    Res = RegCreateKeyExW(HKEY_LOCAL_MACHINE, ProvKey, 0, ((void*)0), 0, KEY_WRITE, ((void*)0), &Key, ((void*)0));
    if (Res != ERROR_SUCCESS) goto error_close_key;


    Res = RegSetValueExW(Key, Dll, 0, REG_SZ, (BYTE*)RegEntry.pwszDLLName,
        (lstrlenW(RegEntry.pwszDLLName) + 1)*sizeof(WCHAR));
    if (Res != ERROR_SUCCESS) goto error_close_key;


    Res = RegSetValueExW(Key, Function, 0, REG_SZ, (BYTE*)RegEntry.pwszFunctionName,
        (lstrlenW(RegEntry.pwszFunctionName) + 1)*sizeof(WCHAR));

error_close_key:
    RegCloseKey(Key);

    return Res;
}
