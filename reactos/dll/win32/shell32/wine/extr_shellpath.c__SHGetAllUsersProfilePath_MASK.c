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
struct TYPE_3__ {scalar_t__ type; int /*<<< orphan*/  szValueName; } ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  size_t BYTE ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 TYPE_1__* CSIDL_Data ; 
 scalar_t__ CSIDL_Type_AllUsers ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int SHGFP_TYPE_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 (char*,int,size_t,...) ; 
 int /*<<< orphan*/  FUNC3 (size_t,size_t,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC6(DWORD dwFlags, BYTE folder,
 LPWSTR pszPath)
{
    HRESULT hr;

    FUNC2("0x%08x,0x%02x,%p\n", dwFlags, folder, pszPath);

    if (folder >= FUNC0(CSIDL_Data))
        return E_INVALIDARG;
    if (CSIDL_Data[folder].type != CSIDL_Type_AllUsers)
        return E_INVALIDARG;
    if (!pszPath)
        return E_INVALIDARG;

    if (dwFlags & SHGFP_TYPE_DEFAULT)
#ifndef __REACTOS__
        hr = FUNC3(folder, pszPath);
#else
        hr = _SHGetDefaultValue(NULL, folder, pszPath);
#endif
    else
    {
#ifndef __REACTOS__
        hr = FUNC4(HKEY_LOCAL_MACHINE, NULL,
#else
        hr = _SHGetUserShellFolderPath(HKEY_LOCAL_MACHINE, NULL, NULL,
#endif
         CSIDL_Data[folder].szValueName, pszPath);
        if (FUNC1(hr))
#ifndef __REACTOS__
            hr = FUNC3(folder, pszPath);
#else
            hr = _SHGetDefaultValue(NULL, folder, pszPath);
#endif
    }
    FUNC2("returning 0x%08x (output path is %s)\n", hr, FUNC5(pszPath));
    return hr;
}