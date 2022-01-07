
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {scalar_t__ type; int szValueName; } ;
typedef char* LPWSTR ;
typedef int LPBYTE ;
typedef int HRESULT ;
typedef int HKEY ;
typedef int DWORD ;
typedef size_t BYTE ;
typedef int BOOL ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* CSIDL_Data ;


 scalar_t__ CSIDL_Type_CurrVer ;
 int E_FAIL ;
 int E_INVALIDARG ;
 int GetCurrentProcess () ;
 int HKEY_LOCAL_MACHINE ;
 int IsWow64Process (int ,int *) ;
 int MAX_PATH ;
 int REG_EXPAND_SZ ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyW (int ,int ,int *) ;
 scalar_t__ RegQueryValueExW (int ,int ,int *,int*,int ,int*) ;
 int RegSetValueExW (int ,int ,int ,int,int ,int) ;
 int SHGFP_TYPE_DEFAULT ;
 int S_OK ;
 int TRACE (char*,int,size_t,...) ;
 int _SHGetDefaultValue (size_t,...) ;
 int debugstr_w (char*) ;
 int is_win64 ;
 int strlenW (char*) ;
 int szCurrentVersion ;

__attribute__((used)) static HRESULT _SHGetCurrentVersionPath(DWORD dwFlags, BYTE folder,
 LPWSTR pszPath)
{
    HRESULT hr;

    TRACE("0x%08x,0x%02x,%p\n", dwFlags, folder, pszPath);

    if (folder >= ARRAY_SIZE(CSIDL_Data))
        return E_INVALIDARG;
    if (CSIDL_Data[folder].type != CSIDL_Type_CurrVer)
        return E_INVALIDARG;
    if (!pszPath)
        return E_INVALIDARG;

    if (dwFlags & SHGFP_TYPE_DEFAULT)

        hr = _SHGetDefaultValue(folder, pszPath);



    else
    {
        HKEY hKey;

        if (RegCreateKeyW(HKEY_LOCAL_MACHINE, szCurrentVersion, &hKey))
            hr = E_FAIL;
        else
        {
            DWORD dwType, dwPathLen = MAX_PATH * sizeof(WCHAR);

            if (RegQueryValueExW(hKey, CSIDL_Data[folder].szValueName, ((void*)0),
             &dwType, (LPBYTE)pszPath, &dwPathLen) ||
             (dwType != REG_SZ && dwType != REG_EXPAND_SZ))
            {

                hr = _SHGetDefaultValue(folder, pszPath);



                dwType = REG_EXPAND_SZ;
                switch (folder)
                {
                case 129:
                case 128:

                    if (!is_win64)
                    {
                        BOOL is_wow64;
                        IsWow64Process( GetCurrentProcess(), &is_wow64 );
                        if (!is_wow64) break;
                    }

                default:
                    RegSetValueExW(hKey, CSIDL_Data[folder].szValueName, 0, dwType,
                                   (LPBYTE)pszPath, (strlenW(pszPath)+1)*sizeof(WCHAR));
                }
            }
            else
            {
                pszPath[dwPathLen / sizeof(WCHAR)] = '\0';
                hr = S_OK;
            }
            RegCloseKey(hKey);
        }
    }
    TRACE("returning 0x%08x (output path is %s)\n", hr, debugstr_w(pszPath));
    return hr;
}
