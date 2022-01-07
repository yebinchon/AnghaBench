
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int VARIANTARG ;
typedef int VARIANT ;
typedef int UINT ;
typedef int HRESULT ;
typedef int EXCEPINFO ;
typedef int DISPPARAMS ;


 int DISPATCH_METHOD ;
 int DISP_E_MEMBERNOTFOUND ;
 int DispGetParam (int *,int ,int ,int *,int *) ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,int ) ;
 int S_OK ;
 int VT_BSTR ;
 int V_BSTR (int *) ;
 int VariantClear (int *) ;
 int VariantInit (int *) ;
 int debugstr_w (int ) ;

__attribute__((used)) static HRESULT InstallerImpl_OpenProduct(WORD wFlags,
                                         DISPPARAMS* pDispParams,
                                         VARIANT* pVarResult,
                                         EXCEPINFO* pExcepInfo,
                                         UINT* puArgErr)
{
    HRESULT hr;
    VARIANTARG varg0;

    if (!(wFlags & DISPATCH_METHOD))
        return DISP_E_MEMBERNOTFOUND;

    VariantInit(&varg0);
    hr = DispGetParam(pDispParams, 0, VT_BSTR, &varg0, puArgErr);
    if (FAILED(hr))
        return hr;

    FIXME("%s\n", debugstr_w(V_BSTR(&varg0)));

    VariantInit(pVarResult);

    VariantClear(&varg0);
    return S_OK;
}
