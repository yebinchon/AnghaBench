
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* content_window; } ;
struct TYPE_9__ {TYPE_3__ framebase; } ;
struct TYPE_6__ {int inner_window; } ;
struct TYPE_7__ {TYPE_1__ base; } ;
typedef TYPE_4__ HTMLIFrame ;
typedef int HTMLDOMNode ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int DISPID ;
typedef int BSTR ;


 int DISP_E_UNKNOWNNAME ;
 TYPE_4__* impl_from_HTMLDOMNode (int *) ;
 int search_window_props (int ,int ,int ,int *) ;

__attribute__((used)) static HRESULT HTMLIFrame_get_dispid(HTMLDOMNode *iface, BSTR name,
        DWORD grfdex, DISPID *pid)
{
    HTMLIFrame *This = impl_from_HTMLDOMNode(iface);

    if(!This->framebase.content_window)
        return DISP_E_UNKNOWNNAME;

    return search_window_props(This->framebase.content_window->base.inner_window, name, grfdex, pid);
}
