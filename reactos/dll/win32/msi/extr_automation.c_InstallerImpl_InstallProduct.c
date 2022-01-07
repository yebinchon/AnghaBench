
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int VARIANTARG ;
typedef int VARIANT ;
typedef scalar_t__ UINT ;
typedef int HRESULT ;
typedef int EXCEPINFO ;
typedef int DISPPARAMS ;


 int DISPATCH_METHOD ;
 int DISP_E_EXCEPTION ;
 int DISP_E_MEMBERNOTFOUND ;
 int DispGetParam (int *,int,int ,int *,scalar_t__*) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ MsiInstallProductW (int ,int ) ;
 int VT_BSTR ;
 int V_BSTR (int *) ;
 int VariantClear (int *) ;
 int VariantInit (int *) ;

__attribute__((used)) static HRESULT InstallerImpl_InstallProduct(WORD wFlags,
                                            DISPPARAMS* pDispParams,
                                            VARIANT* pVarResult,
                                            EXCEPINFO* pExcepInfo,
                                            UINT* puArgErr)
{
    UINT ret;
    HRESULT hr;
    VARIANTARG varg0, varg1;

    if (!(wFlags & DISPATCH_METHOD))
        return DISP_E_MEMBERNOTFOUND;

    VariantInit(&varg0);
    hr = DispGetParam(pDispParams, 0, VT_BSTR, &varg0, puArgErr);
    if (FAILED(hr))
        return hr;

    VariantInit(&varg1);
    hr = DispGetParam(pDispParams, 1, VT_BSTR, &varg1, puArgErr);
    if (FAILED(hr))
        goto done;

    ret = MsiInstallProductW(V_BSTR(&varg0), V_BSTR(&varg1));
    if (ret != ERROR_SUCCESS)
    {
        hr = DISP_E_EXCEPTION;
        goto done;
    }

done:
    VariantClear(&varg0);
    VariantClear(&varg1);
    return hr;
}
