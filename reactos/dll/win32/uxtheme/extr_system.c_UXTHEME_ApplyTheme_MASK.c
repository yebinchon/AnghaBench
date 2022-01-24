#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_4__ {scalar_t__ szThemeFile; scalar_t__ pszSelectedSize; scalar_t__ pszSelectedColor; } ;
typedef  TYPE_1__* PTHEME_FILE ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ g_ActiveThemeFile ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  szColorName ; 
 int /*<<< orphan*/  szDllName ; 
 int /*<<< orphan*/  szSizeName ; 
 int /*<<< orphan*/  szThemeActive ; 
 int /*<<< orphan*/  szThemeManager ; 

__attribute__((used)) static HRESULT FUNC11(PTHEME_FILE tf)
{
    HKEY hKey;
    WCHAR tmp[2];
    HRESULT hr;

    FUNC5("UXTHEME_ApplyTheme\n");

    if (tf && !g_ActiveThemeFile)
    {
        FUNC6();
    }

    hr = FUNC9(tf);
    if (FUNC0(hr))
        return hr;

    if (!tf) 
    {
        FUNC7();
    }

    FUNC5("Writing theme config to registry\n");
    if(!FUNC2(HKEY_CURRENT_USER, szThemeManager, &hKey)) {
        tmp[0] = g_ActiveThemeFile ? '1' : '0';
        tmp[1] = '\0';
        FUNC4(hKey, szThemeActive, 0, REG_SZ, (const BYTE*)tmp, sizeof(WCHAR)*2);
        if (g_ActiveThemeFile) {
            FUNC4(hKey, szColorName, 0, REG_SZ, (const BYTE*)tf->pszSelectedColor, 
		(FUNC10(tf->pszSelectedColor)+1)*sizeof(WCHAR));
            FUNC4(hKey, szSizeName, 0, REG_SZ, (const BYTE*)tf->pszSelectedSize, 
		(FUNC10(tf->pszSelectedSize)+1)*sizeof(WCHAR));
            FUNC4(hKey, szDllName, 0, REG_SZ, (const BYTE*)tf->szThemeFile, 
		(FUNC10(tf->szThemeFile)+1)*sizeof(WCHAR));
        }
        else {
            FUNC3(hKey, szColorName);
            FUNC3(hKey, szSizeName);
            FUNC3(hKey, szDllName);

        }
        FUNC1(hKey);
    }
    else
        FUNC5("Failed to open theme registry key\n");
    
    FUNC8 ();
    
    return hr;
}