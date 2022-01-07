
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef scalar_t__ MSIINSTALLCONTEXT ;
typedef int LPCWSTR ;
typedef int * HKEY ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ ERROR_UNKNOWN_PRODUCT ;
 int FALSE ;
 scalar_t__ MSIINSTALLCONTEXT_MACHINE ;
 scalar_t__ MSIINSTALLCONTEXT_NONE ;
 scalar_t__ MSIINSTALLCONTEXT_USERMANAGED ;
 scalar_t__ MSIINSTALLCONTEXT_USERUNMANAGED ;
 scalar_t__ MSIREG_OpenProductKey (int ,int *,scalar_t__,int **,int ) ;
 int RegCloseKey (int *) ;

UINT msi_locate_product(LPCWSTR szProduct, MSIINSTALLCONTEXT *context)
{
    HKEY hkey = ((void*)0);

    *context = MSIINSTALLCONTEXT_NONE;
    if (!szProduct) return ERROR_UNKNOWN_PRODUCT;

    if (MSIREG_OpenProductKey(szProduct, ((void*)0), MSIINSTALLCONTEXT_USERMANAGED,
                              &hkey, FALSE) == ERROR_SUCCESS)
        *context = MSIINSTALLCONTEXT_USERMANAGED;
    else if (MSIREG_OpenProductKey(szProduct, ((void*)0), MSIINSTALLCONTEXT_MACHINE,
                                   &hkey, FALSE) == ERROR_SUCCESS)
        *context = MSIINSTALLCONTEXT_MACHINE;
    else if (MSIREG_OpenProductKey(szProduct, ((void*)0),
                                   MSIINSTALLCONTEXT_USERUNMANAGED,
                                   &hkey, FALSE) == ERROR_SUCCESS)
        *context = MSIINSTALLCONTEXT_USERUNMANAGED;

    RegCloseKey(hkey);

    if (*context == MSIINSTALLCONTEXT_NONE)
        return ERROR_UNKNOWN_PRODUCT;

    return ERROR_SUCCESS;
}
