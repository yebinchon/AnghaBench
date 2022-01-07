
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int plugin_container; } ;
typedef TYPE_1__ HTMLObjectElement ;
typedef int HTMLDOMNode ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int DISPID ;
typedef int BSTR ;


 int TRACE (char*,TYPE_1__*,int ,int ,int *) ;
 int debugstr_w (int ) ;
 int get_plugin_dispid (int *,int ,int *) ;
 TYPE_1__* impl_from_HTMLDOMNode (int *) ;

__attribute__((used)) static HRESULT HTMLObjectElement_get_dispid(HTMLDOMNode *iface, BSTR name,
        DWORD grfdex, DISPID *pid)
{
    HTMLObjectElement *This = impl_from_HTMLDOMNode(iface);

    TRACE("(%p)->(%s %x %p)\n", This, debugstr_w(name), grfdex, pid);

    return get_plugin_dispid(&This->plugin_container, name, pid);
}
