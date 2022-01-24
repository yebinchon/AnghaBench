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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {scalar_t__ type; int /*<<< orphan*/  id; int /*<<< orphan*/ * szValueName; } ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HLOCAL ;
typedef  scalar_t__ HKEY ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int DWORD ;
typedef  size_t BYTE ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 TYPE_1__* CSIDL_Data ; 
 scalar_t__ CSIDL_Type_User ; 
 int /*<<< orphan*/ * DefaultW ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ HKEY_CURRENT_USER ; 
 scalar_t__ HKEY_LOCAL_MACHINE ; 
 scalar_t__ HKEY_USERS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int SHGFP_TYPE_DEFAULT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (size_t,size_t,...) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC9(HANDLE hToken, DWORD dwFlags, BYTE folder,
 LPWSTR pszPath)
{
    const WCHAR *szValueName;
    WCHAR buffer[40];
    HRESULT hr;

    FUNC4("%p,0x%08x,0x%02x,%p\n", *hToken, dwFlags, folder, pszPath);

    if (folder >= FUNC0(CSIDL_Data))
        return E_INVALIDARG;
    if (CSIDL_Data[folder].type != CSIDL_Type_User)
        return E_INVALIDARG;
    if (!pszPath)
        return E_INVALIDARG;

    if (dwFlags & SHGFP_TYPE_DEFAULT)
    {
#ifndef __REACTOS__
        hr = FUNC6(folder, pszPath);
#else
        hr = _SHGetDefaultValue(hToken, folder, pszPath);
#endif
    }
    else
    {
        LPCWSTR userPrefix = NULL;
        HKEY hRootKey;

        if (hToken == (HANDLE)-1)
        {
            hRootKey = HKEY_USERS;
            userPrefix = DefaultW;
        }
        else if (hToken == NULL)
            hRootKey = HKEY_CURRENT_USER;
        else
        {
            hRootKey = HKEY_USERS;
            userPrefix = FUNC5(hToken);
            if (userPrefix == NULL)
            {
                hr = E_FAIL;
                goto error;
            }
        }

        /* For CSIDL_Type_User we also use the GUID if no szValueName is provided */
        szValueName = CSIDL_Data[folder].szValueName;
        if (!szValueName)
        {
            FUNC3( CSIDL_Data[folder].id, buffer, 39 );
            szValueName = &buffer[0];
        }

#ifndef __REACTOS__
        hr = FUNC7(hRootKey, userPrefix, szValueName, &pszPath);
        if (FUNC1(hr) && hRootKey != HKEY_LOCAL_MACHINE)
            hr = FUNC7(HKEY_LOCAL_MACHINE, NULL, szValueName, &pszPath);
        if (FUNC1(hr))
            hr = FUNC6(folder, pszPath);
#else
        hr = _SHGetUserShellFolderPath(hRootKey, hToken, userPrefix, szValueName, pszPath);
        if (FAILED(hr) && hRootKey != HKEY_LOCAL_MACHINE)
            hr = _SHGetUserShellFolderPath(HKEY_LOCAL_MACHINE, hToken, NULL, szValueName, pszPath);
        if (FAILED(hr))
            hr = _SHGetDefaultValue(hToken, folder, pszPath);
#endif
        if (userPrefix != NULL && userPrefix != DefaultW)
            FUNC2((HLOCAL) userPrefix);
    }
error:
    FUNC4("returning 0x%08x (output path is %s)\n", hr, FUNC8(pszPath));
    return hr;
}