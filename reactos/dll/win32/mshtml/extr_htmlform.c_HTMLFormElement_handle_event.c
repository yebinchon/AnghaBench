
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int nsIDOMEvent ;
struct TYPE_4__ {int node; } ;
struct TYPE_5__ {TYPE_1__ element; int IHTMLFormElement_iface; } ;
typedef TYPE_2__ HTMLFormElement ;
typedef int HTMLDOMNode ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BOOL ;


 int EVENTID_SUBMIT ;
 int HTMLElement_handle_event (int *,int ,int *,int *) ;
 int IHTMLFormElement_submit (int *) ;
 int TRUE ;
 TYPE_2__* impl_from_HTMLDOMNode (int *) ;

__attribute__((used)) static HRESULT HTMLFormElement_handle_event(HTMLDOMNode *iface, DWORD eid, nsIDOMEvent *event, BOOL *prevent_default)
{
    HTMLFormElement *This = impl_from_HTMLDOMNode(iface);

    if(eid == EVENTID_SUBMIT) {
        *prevent_default = TRUE;
        return IHTMLFormElement_submit(&This->IHTMLFormElement_iface);
    }

    return HTMLElement_handle_event(&This->element.node, eid, event, prevent_default);
}
