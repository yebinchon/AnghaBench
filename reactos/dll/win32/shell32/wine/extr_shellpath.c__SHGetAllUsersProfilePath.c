
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int szValueName; } ;
typedef int LPWSTR ;
typedef int HRESULT ;
typedef int DWORD ;
typedef size_t BYTE ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* CSIDL_Data ;
 scalar_t__ CSIDL_Type_AllUsers ;
 int E_INVALIDARG ;
 scalar_t__ FAILED (int ) ;
 int HKEY_LOCAL_MACHINE ;
 int SHGFP_TYPE_DEFAULT ;
 int TRACE (char*,int,size_t,...) ;
 int _SHGetDefaultValue (size_t,size_t,...) ;
 int _SHGetUserShellFolderPath (int ,int *,int ,...) ;
 int debugstr_w (int ) ;

__attribute__((used)) static HRESULT _SHGetAllUsersProfilePath(DWORD dwFlags, BYTE folder,
 LPWSTR pszPath)
{
    HRESULT hr;

    TRACE("0x%08x,0x%02x,%p\n", dwFlags, folder, pszPath);

    if (folder >= ARRAY_SIZE(CSIDL_Data))
        return E_INVALIDARG;
    if (CSIDL_Data[folder].type != CSIDL_Type_AllUsers)
        return E_INVALIDARG;
    if (!pszPath)
        return E_INVALIDARG;

    if (dwFlags & SHGFP_TYPE_DEFAULT)

        hr = _SHGetDefaultValue(folder, pszPath);



    else
    {

        hr = _SHGetUserShellFolderPath(HKEY_LOCAL_MACHINE, ((void*)0),



         CSIDL_Data[folder].szValueName, pszPath);
        if (FAILED(hr))

            hr = _SHGetDefaultValue(folder, pszPath);



    }
    TRACE("returning 0x%08x (output path is %s)\n", hr, debugstr_w(pszPath));
    return hr;
}
