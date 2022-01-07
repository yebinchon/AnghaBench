
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VARIANT ;
struct TYPE_3__ {int member_3; int member_2; int * member_1; int * member_0; } ;
typedef int IUnknown ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef TYPE_1__ DISPPARAMS ;


 int DISPATCH_METHOD ;
 int VT_UNKNOWN ;
 int * V_UNKNOWN (int *) ;
 int invoke (int *,char*,int ,TYPE_1__*,int *,int ) ;

__attribute__((used)) static HRESULT StringList__NewEnum(IDispatch *pList, IUnknown **ppEnumVARIANT)
{
    VARIANT varresult;
    DISPPARAMS dispparams = {((void*)0), ((void*)0), 0, 0};
    HRESULT hr = invoke(pList, "_NewEnum", DISPATCH_METHOD, &dispparams, &varresult, VT_UNKNOWN);
    *ppEnumVARIANT = V_UNKNOWN(&varresult);
    return hr;
}
