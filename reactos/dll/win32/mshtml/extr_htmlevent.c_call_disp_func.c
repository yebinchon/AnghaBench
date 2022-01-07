
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ei ;
typedef int VARIANT ;
typedef int IDispatchEx ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef int EXCEPINFO ;
typedef int DISPPARAMS ;


 int DISPATCH_METHOD ;
 int GetUserDefaultLCID () ;
 int IDispatchEx_InvokeEx (int *,int ,int ,int ,int *,int *,int *,int *) ;
 int IDispatchEx_Release (int *) ;
 int IDispatch_Invoke (int *,int ,int *,int ,int ,int *,int *,int *,int *) ;
 int IDispatch_QueryInterface (int *,int *,void**) ;
 int IID_IDispatchEx ;
 int IID_NULL ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*,int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static HRESULT call_disp_func(IDispatch *disp, DISPPARAMS *dp, VARIANT *retv)
{
    IDispatchEx *dispex;
    EXCEPINFO ei;
    HRESULT hres;

    memset(&ei, 0, sizeof(ei));

    hres = IDispatch_QueryInterface(disp, &IID_IDispatchEx, (void**)&dispex);
    if(SUCCEEDED(hres)) {
        hres = IDispatchEx_InvokeEx(dispex, 0, GetUserDefaultLCID(), DISPATCH_METHOD, dp, retv, &ei, ((void*)0));
        IDispatchEx_Release(dispex);
    }else {
        TRACE("Could not get IDispatchEx interface: %08x\n", hres);
        hres = IDispatch_Invoke(disp, 0, &IID_NULL, GetUserDefaultLCID(), DISPATCH_METHOD,
                dp, retv, &ei, ((void*)0));
    }

    return hres;
}
