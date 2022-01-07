
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsIDOMEvent ;
typedef int nsAString ;
struct TYPE_5__ {int node; } ;
struct TYPE_4__ {TYPE_3__ element; int nsarea; } ;
typedef int HTMLDOMNode ;
typedef TYPE_1__ HTMLAreaElement ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BOOL ;


 int ERR (char*,int ) ;
 int EVENTID_CLICK ;
 int HTMLElement_handle_event (int *,int ,int *,int *) ;
 scalar_t__ NS_FAILED (int ) ;
 int handle_link_click_event (TYPE_3__*,int *,int *,int *,int *) ;
 TYPE_1__* impl_from_HTMLDOMNode (int *) ;
 int nsAString_Finish (int *) ;
 int nsAString_Init (int *,int *) ;
 int nsIDOMHTMLAreaElement_GetHref (int ,int *) ;
 int nsIDOMHTMLAreaElement_GetTarget (int ,int *) ;

__attribute__((used)) static HRESULT HTMLAreaElement_handle_event(HTMLDOMNode *iface, DWORD eid, nsIDOMEvent *event, BOOL *prevent_default)
{
    HTMLAreaElement *This = impl_from_HTMLDOMNode(iface);
    nsAString href_str, target_str;
    nsresult nsres;

    if(eid == EVENTID_CLICK) {
        nsAString_Init(&href_str, ((void*)0));
        nsres = nsIDOMHTMLAreaElement_GetHref(This->nsarea, &href_str);
        if (NS_FAILED(nsres)) {
            ERR("Could not get area href: %08x\n", nsres);
            goto fallback;
        }

        nsAString_Init(&target_str, ((void*)0));
        nsres = nsIDOMHTMLAreaElement_GetTarget(This->nsarea, &target_str);
        if (NS_FAILED(nsres)) {
            ERR("Could not get area target: %08x\n", nsres);
            goto fallback;
        }

        return handle_link_click_event(&This->element, &href_str, &target_str, event, prevent_default);

fallback:
        nsAString_Finish(&href_str);
        nsAString_Finish(&target_str);
    }

    return HTMLElement_handle_event(&This->element.node, eid, event, prevent_default);
}
