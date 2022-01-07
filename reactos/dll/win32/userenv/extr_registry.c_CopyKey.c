
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int * LPBYTE ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int FILETIME ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int DPRINT (char*,...) ;
 int DPRINT1 (char*,...) ;
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,int *) ;
 int KEY_READ ;
 int KEY_WRITE ;
 int REG_OPTION_NON_VOLATILE ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCopyTreeW (int ,int *,int ) ;
 scalar_t__ RegCreateKeyExW (int ,int *,int ,int *,int ,int ,int *,int *,scalar_t__*) ;
 scalar_t__ RegEnumKeyExW (int ,scalar_t__,int *,scalar_t__*,int *,int *,int *,int *) ;
 scalar_t__ RegEnumValueW (int ,scalar_t__,int *,scalar_t__*,int *,scalar_t__*,int *,scalar_t__*) ;
 scalar_t__ RegOpenKeyExW (int ,int *,int ,int ,int *) ;
 scalar_t__ RegQueryInfoKey (int ,int *,int *,int *,scalar_t__*,scalar_t__*,int *,scalar_t__*,scalar_t__*,scalar_t__*,int *,int *) ;
 scalar_t__ RegSetValueExW (int ,int *,int ,scalar_t__,int *,scalar_t__) ;
 int SetLastError (scalar_t__) ;
 int TRUE ;

__attribute__((used)) static
BOOL
CopyKey(HKEY hDstKey,
        HKEY hSrcKey)
{
    LONG Error;
    FILETIME LastWrite;
    DWORD dwSubKeys;
    DWORD dwValues;
    DWORD dwType;
    DWORD dwMaxSubKeyNameLength;
    DWORD dwSubKeyNameLength;
    DWORD dwMaxValueNameLength;
    DWORD dwValueNameLength;
    DWORD dwMaxValueLength;
    DWORD dwValueLength;
    DWORD dwDisposition;
    DWORD i;
    LPWSTR lpNameBuffer;
    LPBYTE lpDataBuffer;
    HKEY hDstSubKey;
    HKEY hSrcSubKey;

    DPRINT ("CopyKey() called \n");

    Error = RegQueryInfoKey(hSrcKey,
                            ((void*)0),
                            ((void*)0),
                            ((void*)0),
                            &dwSubKeys,
                            &dwMaxSubKeyNameLength,
                            ((void*)0),
                            &dwValues,
                            &dwMaxValueNameLength,
                            &dwMaxValueLength,
                            ((void*)0),
                            ((void*)0));
    if (Error != ERROR_SUCCESS)
    {
        DPRINT1("RegQueryInfoKey() failed (Error %lu)\n", Error);
        SetLastError((DWORD)Error);
        return FALSE;
    }

    dwMaxSubKeyNameLength++;
    dwMaxValueNameLength++;

    DPRINT("dwSubKeys %lu\n", dwSubKeys);
    DPRINT("dwMaxSubKeyNameLength %lu\n", dwMaxSubKeyNameLength);
    DPRINT("dwValues %lu\n", dwValues);
    DPRINT("dwMaxValueNameLength %lu\n", dwMaxValueNameLength);
    DPRINT("dwMaxValueLength %lu\n", dwMaxValueLength);


    if (dwSubKeys != 0)
    {
        lpNameBuffer = HeapAlloc(GetProcessHeap(),
                                 0,
                                 dwMaxSubKeyNameLength * sizeof(WCHAR));
        if (lpNameBuffer == ((void*)0))
        {
            DPRINT1("Buffer allocation failed\n");
            SetLastError(ERROR_NOT_ENOUGH_MEMORY);
            return FALSE;
        }

        for (i = 0; i < dwSubKeys; i++)
        {
            dwSubKeyNameLength = dwMaxSubKeyNameLength;
            Error = RegEnumKeyExW(hSrcKey,
                                  i,
                                  lpNameBuffer,
                                  &dwSubKeyNameLength,
                                  ((void*)0),
                                  ((void*)0),
                                  ((void*)0),
                                  &LastWrite);
            if (Error != ERROR_SUCCESS)
            {
                DPRINT1("Subkey enumeration failed (Error %lu)\n", Error);
                HeapFree(GetProcessHeap(),
                         0,
                         lpNameBuffer);
                SetLastError((DWORD)Error);
                return FALSE;
            }

            Error = RegCreateKeyExW(hDstKey,
                                    lpNameBuffer,
                                    0,
                                    ((void*)0),
                                    REG_OPTION_NON_VOLATILE,
                                    KEY_WRITE,
                                    ((void*)0),
                                    &hDstSubKey,
                                    &dwDisposition);
            if (Error != ERROR_SUCCESS)
            {
                DPRINT1("Subkey creation failed (Error %lu)\n", Error);
                HeapFree(GetProcessHeap(),
                         0,
                         lpNameBuffer);
                SetLastError((DWORD)Error);
                return FALSE;
            }

            Error = RegOpenKeyExW(hSrcKey,
                                  lpNameBuffer,
                                  0,
                                  KEY_READ,
                                  &hSrcSubKey);
            if (Error != ERROR_SUCCESS)
            {
                DPRINT1("Error: %lu\n", Error);
                RegCloseKey(hDstSubKey);
                HeapFree(GetProcessHeap(),
                         0,
                         lpNameBuffer);
                SetLastError((DWORD)Error);
                return FALSE;
            }

            if (!CopyKey(hDstSubKey,
                         hSrcSubKey))
            {
                DPRINT1("Error: %lu\n", GetLastError());
                RegCloseKey (hSrcSubKey);
                RegCloseKey (hDstSubKey);
                HeapFree(GetProcessHeap(),
                         0,
                         lpNameBuffer);
                return FALSE;
            }

            RegCloseKey(hSrcSubKey);
            RegCloseKey(hDstSubKey);
        }

        HeapFree(GetProcessHeap(),
                 0,
                 lpNameBuffer);
    }


    if (dwValues != 0)
    {
        lpNameBuffer = HeapAlloc(GetProcessHeap(),
                                 0,
                                 dwMaxValueNameLength * sizeof(WCHAR));
        if (lpNameBuffer == ((void*)0))
        {
            DPRINT1("Buffer allocation failed\n");
            SetLastError(ERROR_NOT_ENOUGH_MEMORY);
            return FALSE;
        }

        lpDataBuffer = HeapAlloc(GetProcessHeap(),
                                 0,
                                 dwMaxValueLength);
        if (lpDataBuffer == ((void*)0))
        {
            DPRINT1("Buffer allocation failed\n");
            HeapFree(GetProcessHeap(),
                     0,
                     lpNameBuffer);
            SetLastError(ERROR_NOT_ENOUGH_MEMORY);
            return FALSE;
        }

        for (i = 0; i < dwValues; i++)
        {
            dwValueNameLength = dwMaxValueNameLength;
            dwValueLength = dwMaxValueLength;
            Error = RegEnumValueW(hSrcKey,
                                  i,
                                  lpNameBuffer,
                                  &dwValueNameLength,
                                  ((void*)0),
                                  &dwType,
                                  lpDataBuffer,
                                  &dwValueLength);
            if (Error != ERROR_SUCCESS)
            {
                DPRINT1("Error: %lu\n", Error);
                HeapFree(GetProcessHeap(),
                         0,
                         lpDataBuffer);
                HeapFree(GetProcessHeap(),
                         0,
                         lpNameBuffer);
                SetLastError((DWORD)Error);
                return FALSE;
            }

            Error = RegSetValueExW(hDstKey,
                                   lpNameBuffer,
                                   0,
                                   dwType,
                                   lpDataBuffer,
                                   dwValueLength);
            if (Error != ERROR_SUCCESS)
            {
                DPRINT1("Error: %lu\n", Error);
                HeapFree(GetProcessHeap(),
                         0,
                         lpDataBuffer);
                HeapFree(GetProcessHeap(),
                         0,
                         lpNameBuffer);
                SetLastError((DWORD)Error);
                return FALSE;
            }
        }

        HeapFree(GetProcessHeap(),
                 0,
                 lpDataBuffer);

        HeapFree(GetProcessHeap(),
                 0,
                 lpNameBuffer);
    }

    DPRINT("CopyKey() done \n");

    return TRUE;

}
