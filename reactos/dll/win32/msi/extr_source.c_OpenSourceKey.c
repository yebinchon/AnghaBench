
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef scalar_t__ MSIINSTALLCONTEXT ;
typedef int LPCWSTR ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_BAD_CONFIGURATION ;
 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ ERROR_UNKNOWN_PATCH ;
 scalar_t__ ERROR_UNKNOWN_PRODUCT ;
 int MSICODE_PATCH ;
 scalar_t__ MSIINSTALLCONTEXT_MACHINE ;
 scalar_t__ MSIINSTALLCONTEXT_USERMANAGED ;
 scalar_t__ MSIINSTALLCONTEXT_USERUNMANAGED ;
 scalar_t__ MSIREG_OpenPatchesKey (int ,int *,int ) ;
 scalar_t__ MSIREG_OpenProductKey (int ,int *,scalar_t__,int *,int ) ;
 scalar_t__ MSIREG_OpenUserPatchesKey (int ,int *,int ) ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyW (int ,int ,int *) ;
 scalar_t__ RegOpenKeyW (int ,int ,int *) ;
 int szSourceList ;

__attribute__((used)) static UINT OpenSourceKey(LPCWSTR szProduct, HKEY* key, DWORD dwOptions,
                          MSIINSTALLCONTEXT context, BOOL create)
{
    HKEY rootkey = 0;
    UINT rc = ERROR_FUNCTION_FAILED;

    if (context == MSIINSTALLCONTEXT_USERUNMANAGED)
    {
        if (dwOptions & MSICODE_PATCH)
            rc = MSIREG_OpenUserPatchesKey(szProduct, &rootkey, create);
        else
            rc = MSIREG_OpenProductKey(szProduct, ((void*)0), context,
                                       &rootkey, create);
    }
    else if (context == MSIINSTALLCONTEXT_USERMANAGED)
    {
        if (dwOptions & MSICODE_PATCH)
            rc = MSIREG_OpenUserPatchesKey(szProduct, &rootkey, create);
        else
            rc = MSIREG_OpenProductKey(szProduct, ((void*)0), context,
                                       &rootkey, create);
    }
    else if (context == MSIINSTALLCONTEXT_MACHINE)
    {
        if (dwOptions & MSICODE_PATCH)
            rc = MSIREG_OpenPatchesKey(szProduct, &rootkey, create);
        else
            rc = MSIREG_OpenProductKey(szProduct, ((void*)0), context,
                                       &rootkey, create);
    }

    if (rc != ERROR_SUCCESS)
    {
        if (dwOptions & MSICODE_PATCH)
            return ERROR_UNKNOWN_PATCH;
        else
            return ERROR_UNKNOWN_PRODUCT;
    }

    if (create)
        rc = RegCreateKeyW(rootkey, szSourceList, key);
    else
    {
        rc = RegOpenKeyW(rootkey,szSourceList, key);
        if (rc != ERROR_SUCCESS)
            rc = ERROR_BAD_CONFIGURATION;
    }
    RegCloseKey(rootkey);

    return rc;
}
