
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VARIANT ;
typedef int ULONG ;
struct TYPE_6__ {int member_3; int member_2; int * member_1; int * member_0; } ;
struct TYPE_5__ {int plugin_unk; } ;
typedef TYPE_1__ PluginHost ;
typedef int IDispatchEx ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef TYPE_2__ DISPPARAMS ;


 int DISPATCH_PROPERTYGET ;
 int DISPID_READYSTATE ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*) ;
 int IDispatchEx_Release (int *) ;
 int IDispatch_Invoke (int *,int ,int *,int ,int ,TYPE_2__*,int *,int *,int *) ;
 int IDispatch_Release (int *) ;
 int IID_IDispatch ;
 int IID_IDispatchEx ;
 int IID_NULL ;
 int IUnknown_QueryInterface (int ,int *,void**) ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*,int ) ;
 int VariantClear (int *) ;
 int debugstr_variant (int *) ;

__attribute__((used)) static void update_readystate(PluginHost *host)
{
    DISPPARAMS params = {((void*)0),((void*)0),0,0};
    IDispatchEx *dispex;
    IDispatch *disp;
    ULONG err = 0;
    VARIANT v;
    HRESULT hres;

    hres = IUnknown_QueryInterface(host->plugin_unk, &IID_IDispatchEx, (void**)&dispex);
    if(SUCCEEDED(hres)) {
        FIXME("Use IDispatchEx\n");
        IDispatchEx_Release(dispex);
    }

    hres = IUnknown_QueryInterface(host->plugin_unk, &IID_IDispatch, (void**)&disp);
    if(FAILED(hres))
        return;

    hres = IDispatch_Invoke(disp, DISPID_READYSTATE, &IID_NULL, 0, DISPATCH_PROPERTYGET, &params, &v, ((void*)0), &err);
    IDispatch_Release(disp);
    if(SUCCEEDED(hres)) {

        TRACE("readystate = %s\n", debugstr_variant(&v));
        VariantClear(&v);
    }
}
