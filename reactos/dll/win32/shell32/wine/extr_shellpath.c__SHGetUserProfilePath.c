
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {scalar_t__ type; int id; int * szValueName; } ;
typedef int LPWSTR ;
typedef int * LPCWSTR ;
typedef int HRESULT ;
typedef int HLOCAL ;
typedef scalar_t__ HKEY ;
typedef int * HANDLE ;
typedef int DWORD ;
typedef size_t BYTE ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* CSIDL_Data ;
 scalar_t__ CSIDL_Type_User ;
 int * DefaultW ;
 int E_FAIL ;
 int E_INVALIDARG ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ HKEY_CURRENT_USER ;
 scalar_t__ HKEY_LOCAL_MACHINE ;
 scalar_t__ HKEY_USERS ;
 int LocalFree (int ) ;
 int SHGFP_TYPE_DEFAULT ;
 int StringFromGUID2 (int ,int *,int) ;
 int TRACE (char*,int ,int,...) ;
 int * _GetUserSidStringFromToken (int *) ;
 int _SHGetDefaultValue (size_t,size_t,...) ;
 int _SHGetUserShellFolderPath (scalar_t__,int *,int *,int const*,...) ;
 int debugstr_w (int ) ;

__attribute__((used)) static HRESULT _SHGetUserProfilePath(HANDLE hToken, DWORD dwFlags, BYTE folder,
 LPWSTR pszPath)
{
    const WCHAR *szValueName;
    WCHAR buffer[40];
    HRESULT hr;

    TRACE("%p,0x%08x,0x%02x,%p\n", hToken, dwFlags, folder, pszPath);

    if (folder >= ARRAY_SIZE(CSIDL_Data))
        return E_INVALIDARG;
    if (CSIDL_Data[folder].type != CSIDL_Type_User)
        return E_INVALIDARG;
    if (!pszPath)
        return E_INVALIDARG;

    if (dwFlags & SHGFP_TYPE_DEFAULT)
    {

        hr = _SHGetDefaultValue(folder, pszPath);



    }
    else
    {
        LPCWSTR userPrefix = ((void*)0);
        HKEY hRootKey;

        if (hToken == (HANDLE)-1)
        {
            hRootKey = HKEY_USERS;
            userPrefix = DefaultW;
        }
        else if (hToken == ((void*)0))
            hRootKey = HKEY_CURRENT_USER;
        else
        {
            hRootKey = HKEY_USERS;
            userPrefix = _GetUserSidStringFromToken(hToken);
            if (userPrefix == ((void*)0))
            {
                hr = E_FAIL;
                goto error;
            }
        }


        szValueName = CSIDL_Data[folder].szValueName;
        if (!szValueName)
        {
            StringFromGUID2( CSIDL_Data[folder].id, buffer, 39 );
            szValueName = &buffer[0];
        }


        hr = _SHGetUserShellFolderPath(hRootKey, userPrefix, szValueName, pszPath);
        if (FAILED(hr) && hRootKey != HKEY_LOCAL_MACHINE)
            hr = _SHGetUserShellFolderPath(HKEY_LOCAL_MACHINE, ((void*)0), szValueName, pszPath);
        if (FAILED(hr))
            hr = _SHGetDefaultValue(folder, pszPath);







        if (userPrefix != ((void*)0) && userPrefix != DefaultW)
            LocalFree((HLOCAL) userPrefix);
    }
error:
    TRACE("returning 0x%08x (output path is %s)\n", hr, debugstr_w(pszPath));
    return hr;
}
