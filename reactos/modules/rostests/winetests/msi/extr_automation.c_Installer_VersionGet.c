
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VARIANT ;
struct TYPE_3__ {int member_3; int member_2; int * member_1; int * member_0; } ;
typedef int LPWSTR ;
typedef int HRESULT ;
typedef TYPE_1__ DISPPARAMS ;


 int DISPATCH_PROPERTYGET ;
 int VT_BSTR ;
 scalar_t__ V_BSTR (int *) ;
 int VariantClear (int *) ;
 int invoke (int ,char*,int ,TYPE_1__*,int *,int ) ;
 int lstrcpyW (int ,scalar_t__) ;
 int pInstaller ;

__attribute__((used)) static HRESULT Installer_VersionGet(LPWSTR szVersion)
{
    VARIANT varresult;
    DISPPARAMS dispparams = {((void*)0), ((void*)0), 0, 0};
    HRESULT hr;

    hr = invoke(pInstaller, "Version", DISPATCH_PROPERTYGET, &dispparams, &varresult, VT_BSTR);
    if (V_BSTR(&varresult)) lstrcpyW(szVersion, V_BSTR(&varresult));
    VariantClear(&varresult);
    return hr;
}
