
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_3; int member_2; int * member_1; int * member_0; } ;
typedef int LPVARIANT ;
typedef int HRESULT ;
typedef TYPE_1__ DISPPARAMS ;


 int DISPATCH_PROPERTYGET ;
 int DISPID_VALUE ;
 int DISP_E_TYPEMISMATCH ;
 int IDispatch_Invoke (int *,int ,int *,int ,int ,TYPE_1__*,int ,int *,int *) ;
 int IID_NULL ;
 int LOCALE_USER_DEFAULT ;
 int VT_DISPATCH ;
 int VT_TYPEMASK ;
 int * V_DISPATCH (int ) ;
 int V_VT (int ) ;

__attribute__((used)) static HRESULT VARIANT_FetchDispatchValue(LPVARIANT pvDispatch, LPVARIANT pValue)
{
    HRESULT hres;
    static DISPPARAMS emptyParams = { ((void*)0), ((void*)0), 0, 0 };

    if ((V_VT(pvDispatch) & VT_TYPEMASK) == VT_DISPATCH) {
        if (((void*)0) == V_DISPATCH(pvDispatch)) return DISP_E_TYPEMISMATCH;
        hres = IDispatch_Invoke(V_DISPATCH(pvDispatch), DISPID_VALUE, &IID_NULL,
            LOCALE_USER_DEFAULT, DISPATCH_PROPERTYGET, &emptyParams, pValue,
            ((void*)0), ((void*)0));
    } else {
        hres = DISP_E_TYPEMISMATCH;
    }
    return hres;
}
