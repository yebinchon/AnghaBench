
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
typedef int VARIANT ;
struct TYPE_4__ {int plugin_container; } ;
typedef int LCID ;
typedef int IServiceProvider ;
typedef TYPE_1__ HTMLObjectElement ;
typedef int HTMLDOMNode ;
typedef int HRESULT ;
typedef int EXCEPINFO ;
typedef int DISPPARAMS ;
typedef int DISPID ;


 int TRACE (char*,TYPE_1__*,int ) ;
 TYPE_1__* impl_from_HTMLDOMNode (int *) ;
 int invoke_plugin_prop (int *,int ,int ,int ,int *,int *,int *) ;

__attribute__((used)) static HRESULT HTMLObjectElement_invoke(HTMLDOMNode *iface, DISPID id, LCID lcid,
        WORD flags, DISPPARAMS *params, VARIANT *res, EXCEPINFO *ei, IServiceProvider *caller)
{
    HTMLObjectElement *This = impl_from_HTMLDOMNode(iface);

    TRACE("(%p)->(%d)\n", This, id);

    return invoke_plugin_prop(&This->plugin_container, id, lcid, flags, params, res, ei);
}
