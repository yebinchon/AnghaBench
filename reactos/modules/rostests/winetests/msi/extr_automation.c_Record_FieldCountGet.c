
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VARIANT ;
struct TYPE_3__ {int member_3; int member_2; int * member_1; int * member_0; } ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef TYPE_1__ DISPPARAMS ;


 int DISPATCH_PROPERTYGET ;
 int VT_I4 ;
 int V_I4 (int *) ;
 int VariantClear (int *) ;
 int invoke (int *,char*,int ,TYPE_1__*,int *,int ) ;

__attribute__((used)) static HRESULT Record_FieldCountGet(IDispatch *pRecord, int *pFieldCount)
{
    VARIANT varresult;
    DISPPARAMS dispparams = {((void*)0), ((void*)0), 0, 0};
    HRESULT hr = invoke(pRecord, "FieldCount", DISPATCH_PROPERTYGET, &dispparams, &varresult, VT_I4);
    *pFieldCount = V_I4(&varresult);
    VariantClear(&varresult);
    return hr;
}
