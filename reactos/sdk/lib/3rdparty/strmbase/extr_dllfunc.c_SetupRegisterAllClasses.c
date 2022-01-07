
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_Name; int m_ClsID; } ;
typedef int OLECHAR ;
typedef int LPCWSTR ;
typedef scalar_t__ LONG ;
typedef int HRESULT ;
typedef int HKEY ;
typedef TYPE_1__ FactoryTemplate ;
typedef scalar_t__ BOOL ;


 int CHARS_IN_GUID ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CLASSES_ROOT ;
 int HRESULT_FROM_WIN32 (scalar_t__) ;
 int NOERROR ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyW (int ,int ,int *) ;
 int RegDeleteTreeW (int ,int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int SetupRegisterClass (int ,int *,int ,int ,int ,int ) ;
 int StringFromGUID2 (int ,int *,int) ;
 int clsid_keyname ;
 int ips32_keyname ;
 int tmodel_both ;

__attribute__((used)) static HRESULT SetupRegisterAllClasses(const FactoryTemplate * pList, int num,
                                       LPCWSTR szFileName, BOOL bRegister)
{
    HRESULT hr = NOERROR;
    HKEY hkey;
    OLECHAR szCLSID[CHARS_IN_GUID];
    LONG i, ret = RegCreateKeyW(HKEY_CLASSES_ROOT, clsid_keyname, &hkey);
    if (ERROR_SUCCESS != ret)
        return HRESULT_FROM_WIN32(ret);

    for (i = 0; i < num; i++, pList++)
    {

        hr = StringFromGUID2(pList->m_ClsID, szCLSID, CHARS_IN_GUID);
        if (SUCCEEDED(hr))
        {
            if (bRegister )
                hr = SetupRegisterClass(hkey, szCLSID,
                                        pList->m_Name, szFileName,
                                        ips32_keyname, tmodel_both);
            else
                hr = RegDeleteTreeW(hkey, szCLSID);
        }
    }
    RegCloseKey(hkey);
    return hr;
}
