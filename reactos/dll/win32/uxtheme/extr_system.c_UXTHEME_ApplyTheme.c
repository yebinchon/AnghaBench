
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_4__ {scalar_t__ szThemeFile; scalar_t__ pszSelectedSize; scalar_t__ pszSelectedColor; } ;
typedef TYPE_1__* PTHEME_FILE ;
typedef int HRESULT ;
typedef int HKEY ;
typedef int BYTE ;


 scalar_t__ FAILED (int ) ;
 int HKEY_CURRENT_USER ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 int RegCreateKeyW (int ,int ,int *) ;
 int RegDeleteValueW (int ,int ) ;
 int RegSetValueExW (int ,int ,int ,int ,int const*,int) ;
 int TRACE (char*) ;
 int UXTHEME_BackupSystemMetrics () ;
 int UXTHEME_RestoreSystemMetrics () ;
 int UXTHEME_SaveSystemMetrics () ;
 int UXTHEME_SetActiveTheme (TYPE_1__*) ;
 scalar_t__ g_ActiveThemeFile ;
 int lstrlenW (scalar_t__) ;
 int szColorName ;
 int szDllName ;
 int szSizeName ;
 int szThemeActive ;
 int szThemeManager ;

__attribute__((used)) static HRESULT UXTHEME_ApplyTheme(PTHEME_FILE tf)
{
    HKEY hKey;
    WCHAR tmp[2];
    HRESULT hr;

    TRACE("UXTHEME_ApplyTheme\n");

    if (tf && !g_ActiveThemeFile)
    {
        UXTHEME_BackupSystemMetrics();
    }

    hr = UXTHEME_SetActiveTheme(tf);
    if (FAILED(hr))
        return hr;

    if (!tf)
    {
        UXTHEME_RestoreSystemMetrics();
    }

    TRACE("Writing theme config to registry\n");
    if(!RegCreateKeyW(HKEY_CURRENT_USER, szThemeManager, &hKey)) {
        tmp[0] = g_ActiveThemeFile ? '1' : '0';
        tmp[1] = '\0';
        RegSetValueExW(hKey, szThemeActive, 0, REG_SZ, (const BYTE*)tmp, sizeof(WCHAR)*2);
        if (g_ActiveThemeFile) {
            RegSetValueExW(hKey, szColorName, 0, REG_SZ, (const BYTE*)tf->pszSelectedColor,
  (lstrlenW(tf->pszSelectedColor)+1)*sizeof(WCHAR));
            RegSetValueExW(hKey, szSizeName, 0, REG_SZ, (const BYTE*)tf->pszSelectedSize,
  (lstrlenW(tf->pszSelectedSize)+1)*sizeof(WCHAR));
            RegSetValueExW(hKey, szDllName, 0, REG_SZ, (const BYTE*)tf->szThemeFile,
  (lstrlenW(tf->szThemeFile)+1)*sizeof(WCHAR));
        }
        else {
            RegDeleteValueW(hKey, szColorName);
            RegDeleteValueW(hKey, szSizeName);
            RegDeleteValueW(hKey, szDllName);

        }
        RegCloseKey(hKey);
    }
    else
        TRACE("Failed to open theme registry key\n");

    UXTHEME_SaveSystemMetrics ();

    return hr;
}
