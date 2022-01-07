
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int VARIANT ;
typedef int UINT ;
typedef int HRESULT ;
typedef int EXCEPINFO ;
typedef int DISPPARAMS ;


 int DISPATCH_METHOD ;
 int DISP_E_MEMBERNOTFOUND ;
 int FIXME (char*) ;
 int S_OK ;
 int VariantInit (int *) ;

__attribute__((used)) static HRESULT InstallerImpl_EnableLog(WORD wFlags,
                                       DISPPARAMS* pDispParams,
                                       VARIANT* pVarResult,
                                       EXCEPINFO* pExcepInfo,
                                       UINT* puArgErr)
{
    if (!(wFlags & DISPATCH_METHOD))
        return DISP_E_MEMBERNOTFOUND;

    FIXME("\n");

    VariantInit(pVarResult);
    return S_OK;
}
