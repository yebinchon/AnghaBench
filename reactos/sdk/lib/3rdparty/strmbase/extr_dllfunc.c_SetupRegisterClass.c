
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ LPCWSTR ;
typedef scalar_t__ LONG ;
typedef int HRESULT ;
typedef int * HKEY ;
typedef int BYTE ;


 scalar_t__ ERROR_SUCCESS ;
 int HRESULT_FROM_WIN32 (scalar_t__) ;
 int REG_SZ ;
 int RegCloseKey (int *) ;
 scalar_t__ RegCreateKeyW (int *,scalar_t__,int **) ;
 scalar_t__ RegSetValueExW (int *,int ,long,int ,int const*,int) ;
 scalar_t__ RegSetValueW (int *,int *,int ,scalar_t__,int) ;
 int lstrlenW (scalar_t__) ;
 int tmodel_keyname ;

__attribute__((used)) static HRESULT SetupRegisterClass(HKEY clsid, LPCWSTR szCLSID,
                                  LPCWSTR szDescription,
                                  LPCWSTR szFileName,
                                  LPCWSTR szServerType,
                                  LPCWSTR szThreadingModel)
{
    HKEY hkey, hsubkey = ((void*)0);
    LONG ret = RegCreateKeyW(clsid, szCLSID, &hkey);
    if (ERROR_SUCCESS != ret)
        return HRESULT_FROM_WIN32(ret);


    ret = RegSetValueW(hkey, ((void*)0), REG_SZ, szDescription,
                       sizeof(WCHAR) * (lstrlenW(szDescription) + 1));
    if (ERROR_SUCCESS != ret)
        goto err_out;



    ret = RegCreateKeyW(hkey, szServerType, &hsubkey);
    if (ERROR_SUCCESS != ret)
        goto err_out;


    ret = RegSetValueW(hsubkey, ((void*)0), REG_SZ, szFileName,
                       sizeof(WCHAR) * (lstrlenW(szFileName) + 1));
    if (ERROR_SUCCESS != ret)
        goto err_out;


    ret = RegSetValueExW(hsubkey, tmodel_keyname, 0L, REG_SZ,
                         (const BYTE*)szThreadingModel,
                         sizeof(WCHAR) * (lstrlenW(szThreadingModel) + 1));
err_out:
    if (hsubkey)
        RegCloseKey(hsubkey);
    RegCloseKey(hkey);
    return HRESULT_FROM_WIN32(ret);
}
