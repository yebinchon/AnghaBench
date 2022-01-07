
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int nsAString ;
struct TYPE_14__ {TYPE_3__* doc; } ;
struct TYPE_16__ {TYPE_4__ node; } ;
struct TYPE_11__ {int IHTMLWindow2_iface; } ;
struct TYPE_15__ {TYPE_1__ base; int uri_nofrag; } ;
struct TYPE_12__ {int window; } ;
struct TYPE_13__ {TYPE_2__ basedoc; } ;
typedef scalar_t__ PRUnichar ;
typedef TYPE_5__ HTMLOuterWindow ;
typedef TYPE_6__ HTMLElement ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 int BINDING_NAVIGATED ;
 int IHTMLWindow2_Release (int *) ;
 int S_OK ;
 int TRACE (char*) ;
 TYPE_5__* get_target_window (int ,int *,scalar_t__*) ;
 int navigate_href_new_window (TYPE_6__*,int *,scalar_t__ const*) ;
 int navigate_url (TYPE_5__*,scalar_t__ const*,int ,int ) ;
 int nsAString_GetData (int *,scalar_t__ const**) ;

__attribute__((used)) static HRESULT navigate_href(HTMLElement *element, nsAString *href_str, nsAString *target_str)
{
    HTMLOuterWindow *window;
    BOOL use_new_window;
    const PRUnichar *href;
    HRESULT hres;

    window = get_target_window(element->node.doc->basedoc.window, target_str, &use_new_window);
    if(!window) {
        if(use_new_window) {
            const PRUnichar *target;
            nsAString_GetData(target_str, &target);
            return navigate_href_new_window(element, href_str, target);
        }else {
            return S_OK;
        }
    }

    nsAString_GetData(href_str, &href);
    if(*href) {
        hres = navigate_url(window, href, window->uri_nofrag, BINDING_NAVIGATED);
    }else {
        TRACE("empty href\n");
        hres = S_OK;
    }
    IHTMLWindow2_Release(&window->base.IHTMLWindow2_iface);
    return hres;
}
