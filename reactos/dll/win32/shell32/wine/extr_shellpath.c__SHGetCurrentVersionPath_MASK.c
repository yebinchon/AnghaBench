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
struct TYPE_3__ {scalar_t__ type; int /*<<< orphan*/  szValueName; } ;
typedef  char* LPWSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  size_t BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 TYPE_1__* CSIDL_Data ; 
#define  CSIDL_PROGRAM_FILESX86 129 
#define  CSIDL_PROGRAM_FILES_COMMONX86 128 
 scalar_t__ CSIDL_Type_CurrVer ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int REG_EXPAND_SZ ; 
 int REG_SZ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int SHGFP_TYPE_DEFAULT ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC7 (char*,int,size_t,...) ; 
 int /*<<< orphan*/  FUNC8 (size_t,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  is_win64 ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  szCurrentVersion ; 

__attribute__((used)) static HRESULT FUNC11(DWORD dwFlags, BYTE folder,
 LPWSTR pszPath)
{
    HRESULT hr;

    FUNC7("0x%08x,0x%02x,%p\n", dwFlags, folder, pszPath);

    if (folder >= FUNC0(CSIDL_Data))
        return E_INVALIDARG;
    if (CSIDL_Data[folder].type != CSIDL_Type_CurrVer)
        return E_INVALIDARG;
    if (!pszPath)
        return E_INVALIDARG;

    if (dwFlags & SHGFP_TYPE_DEFAULT)
#ifndef __REACTOS__
        hr = FUNC8(folder, pszPath);
#else
        hr = _SHGetDefaultValue(NULL, folder, pszPath);
#endif
    else
    {
        HKEY hKey;

        if (FUNC4(HKEY_LOCAL_MACHINE, szCurrentVersion, &hKey))
            hr = E_FAIL;
        else
        {
            DWORD dwType, dwPathLen = MAX_PATH * sizeof(WCHAR);

            if (FUNC5(hKey, CSIDL_Data[folder].szValueName, NULL,
             &dwType, (LPBYTE)pszPath, &dwPathLen) ||
             (dwType != REG_SZ && dwType != REG_EXPAND_SZ))
            {
#ifndef __REACTOS__
                hr = FUNC8(folder, pszPath);
#else
                hr = _SHGetDefaultValue(NULL, folder, pszPath);
#endif
                dwType = REG_EXPAND_SZ;
                switch (folder)
                {
                case CSIDL_PROGRAM_FILESX86:
                case CSIDL_PROGRAM_FILES_COMMONX86:
                    /* these two should never be set on 32-bit setups */
                    if (!is_win64)
                    {
                        BOOL is_wow64;
                        FUNC2( FUNC1(), &is_wow64 );
                        if (!is_wow64) break;
                    }
                    /* fall through */
                default:
                    FUNC6(hKey, CSIDL_Data[folder].szValueName, 0, dwType,
                                   (LPBYTE)pszPath, (FUNC10(pszPath)+1)*sizeof(WCHAR));
                }
            }
            else
            {
                pszPath[dwPathLen / sizeof(WCHAR)] = '\0';
                hr = S_OK;
            }
            FUNC3(hKey);
        }
    }
    FUNC7("returning 0x%08x (output path is %s)\n", hr, FUNC9(pszPath));
    return hr;
}