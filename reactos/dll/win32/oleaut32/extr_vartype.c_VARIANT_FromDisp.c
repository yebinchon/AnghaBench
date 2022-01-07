
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VARTYPE ;
typedef int VARIANTARG ;
struct TYPE_3__ {int member_3; int member_2; int * member_1; int * member_0; } ;
typedef int LCID ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef int DWORD ;
typedef TYPE_1__ DISPPARAMS ;


 int DISPATCH_PROPERTYGET ;
 int DISPID_VALUE ;
 int DISP_E_BADVARTYPE ;
 int DISP_E_TYPEMISMATCH ;
 int IDispatch_Invoke (int *,int ,int *,int ,int ,TYPE_1__*,int *,int *,int *) ;
 int IID_NULL ;
 scalar_t__ SUCCEEDED (int ) ;
 int VARIANT_CopyData (int *,int ,void*) ;
 int VariantChangeTypeEx (int *,int *,int ,int ,int ) ;
 int VariantClear (int *) ;
 int VariantInit (int *) ;

__attribute__((used)) static HRESULT VARIANT_FromDisp(IDispatch* pdispIn, LCID lcid, void* pOut,
                                VARTYPE vt, DWORD dwFlags)
{
  static DISPPARAMS emptyParams = { ((void*)0), ((void*)0), 0, 0 };
  VARIANTARG srcVar, dstVar;
  HRESULT hRet;

  if (!pdispIn)
    return DISP_E_BADVARTYPE;


  VariantInit(&srcVar);
  hRet = IDispatch_Invoke(pdispIn, DISPID_VALUE, &IID_NULL, lcid, DISPATCH_PROPERTYGET,
                          &emptyParams, &srcVar, ((void*)0), ((void*)0));

  if (SUCCEEDED(hRet))
  {

    VariantInit(&dstVar);
    hRet = VariantChangeTypeEx(&dstVar, &srcVar, lcid, dwFlags, vt);
    VariantClear(&srcVar);

    if (SUCCEEDED(hRet))
      VARIANT_CopyData(&dstVar, vt, pOut);
  }
  else
    hRet = DISP_E_TYPEMISMATCH;
  return hRet;
}
