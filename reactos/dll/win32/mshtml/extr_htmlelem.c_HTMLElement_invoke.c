
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WORD ;
typedef int VARIANT ;
struct TYPE_8__ {TYPE_1__* vtbl; } ;
struct TYPE_7__ {TYPE_3__ node; } ;
struct TYPE_6__ {int (* invoke ) (TYPE_3__*,int ,int ,int ,int *,int *,int *,int *) ;} ;
typedef int LCID ;
typedef int IServiceProvider ;
typedef TYPE_2__ HTMLElement ;
typedef int HRESULT ;
typedef int EXCEPINFO ;
typedef int DispatchEx ;
typedef int DISPPARAMS ;
typedef int DISPID ;


 int ERR (char*,TYPE_2__*) ;
 int E_NOTIMPL ;
 TYPE_2__* impl_from_DispatchEx (int *) ;
 int stub1 (TYPE_3__*,int ,int ,int ,int *,int *,int *,int *) ;

__attribute__((used)) static HRESULT HTMLElement_invoke(DispatchEx *dispex, DISPID id, LCID lcid,
        WORD flags, DISPPARAMS *params, VARIANT *res, EXCEPINFO *ei,
        IServiceProvider *caller)
{
    HTMLElement *This = impl_from_DispatchEx(dispex);

    if(This->node.vtbl->invoke)
        return This->node.vtbl->invoke(&This->node, id, lcid, flags,
                params, res, ei, caller);

    ERR("(%p): element has no invoke method\n", This);
    return E_NOTIMPL;
}
