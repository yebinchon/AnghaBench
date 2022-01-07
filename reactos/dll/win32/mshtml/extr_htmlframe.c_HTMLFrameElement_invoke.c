
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WORD ;
typedef int VARIANT ;
struct TYPE_8__ {TYPE_2__* content_window; } ;
struct TYPE_9__ {TYPE_3__ framebase; } ;
struct TYPE_6__ {int IDispatchEx_iface; } ;
struct TYPE_7__ {TYPE_1__ base; } ;
typedef int LCID ;
typedef int IServiceProvider ;
typedef TYPE_4__ HTMLFrameElement ;
typedef int HTMLDOMNode ;
typedef int HRESULT ;
typedef int EXCEPINFO ;
typedef int DISPPARAMS ;
typedef int DISPID ;


 int ERR (char*) ;
 int E_FAIL ;
 int IDispatchEx_InvokeEx (int *,int ,int ,int ,int *,int *,int *,int *) ;
 TYPE_4__* impl_from_HTMLDOMNode (int *) ;

__attribute__((used)) static HRESULT HTMLFrameElement_invoke(HTMLDOMNode *iface, DISPID id, LCID lcid,
        WORD flags, DISPPARAMS *params, VARIANT *res, EXCEPINFO *ei, IServiceProvider *caller)
{
    HTMLFrameElement *This = impl_from_HTMLDOMNode(iface);

    if(!This->framebase.content_window) {
        ERR("no content window to invoke on\n");
        return E_FAIL;
    }

    return IDispatchEx_InvokeEx(&This->framebase.content_window->base.IDispatchEx_iface, id, lcid,
            flags, params, res, ei, caller);
}
