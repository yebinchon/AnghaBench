
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ nsresult ;
typedef int nsIDOMMouseEvent ;
typedef int nsIDOMEvent ;
typedef int nsAString ;
typedef int INT16 ;
typedef int HTMLElement ;
typedef int HRESULT ;
typedef int BOOL ;


 int FALSE ;
 int IID_nsIDOMMouseEvent ;
 scalar_t__ NS_OK ;
 int S_OK ;
 int TRACE (char*) ;
 int TRUE ;
 int assert (int) ;
 int navigate_href (int *,int *,int *) ;
 int navigate_href_new_window (int *,int *,int *) ;
 int nsAString_Finish (int *) ;
 scalar_t__ nsIDOMEvent_QueryInterface (int *,int *,void**) ;
 scalar_t__ nsIDOMMouseEvent_GetButton (int *,int*) ;
 int nsIDOMMouseEvent_Release (int *) ;

HRESULT handle_link_click_event(HTMLElement *element, nsAString *href_str, nsAString *target_str,
                                nsIDOMEvent *event, BOOL *prevent_default)
{
    nsIDOMMouseEvent *mouse_event;
    INT16 button;
    nsresult nsres;
    HRESULT hres;

    TRACE("CLICK\n");

    nsres = nsIDOMEvent_QueryInterface(event, &IID_nsIDOMMouseEvent, (void**)&mouse_event);
    assert(nsres == NS_OK);

    nsres = nsIDOMMouseEvent_GetButton(mouse_event, &button);
    assert(nsres == NS_OK);

    nsIDOMMouseEvent_Release(mouse_event);

    switch(button) {
    case 0:
        *prevent_default = TRUE;
        hres = navigate_href(element, href_str, target_str);
        break;
    case 1:
        *prevent_default = TRUE;
        hres = navigate_href_new_window(element, href_str, ((void*)0));
        break;
    default:
        *prevent_default = FALSE;
        hres = S_OK;
    }

    nsAString_Finish(href_str);
    nsAString_Finish(target_str);
    return hres;
}
