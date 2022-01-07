
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lcid; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int WORD ;
typedef int ULONG ;
struct TYPE_7__ {int member_0; } ;
typedef int IDispatchEx ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef TYPE_2__ EXCEPINFO ;
typedef int DISPPARAMS ;
typedef int DISPID ;


 int IDispatchEx_InvokeEx (int *,int ,int ,int ,int *,int *,TYPE_2__*,int *) ;
 int IDispatchEx_Release (int *) ;
 int IDispatch_Invoke (int *,int ,int *,int ,int ,int *,int *,TYPE_2__*,int *) ;
 int IDispatch_QueryInterface (int *,int *,void**) ;
 int IID_IDispatchEx ;
 int IID_NULL ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*) ;

HRESULT disp_propput(script_ctx_t *ctx, IDispatch *disp, DISPID id, WORD flags, DISPPARAMS *dp)
{
    IDispatchEx *dispex;
    EXCEPINFO ei = {0};
    HRESULT hres;

    hres = IDispatch_QueryInterface(disp, &IID_IDispatchEx, (void**)&dispex);
    if(SUCCEEDED(hres)) {
        hres = IDispatchEx_InvokeEx(dispex, id, ctx->lcid, flags, dp, ((void*)0), &ei, ((void*)0) );
        IDispatchEx_Release(dispex);
    }else {
        ULONG err = 0;

        TRACE("using IDispatch\n");
        hres = IDispatch_Invoke(disp, id, &IID_NULL, ctx->lcid, flags, dp, ((void*)0), &ei, &err);
    }

    return hres;
}
