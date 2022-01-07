
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nsIWebBrowserChrome_iface; int * hwnd; int * content_listener; int * editor; int * editor_controller; int * focus; int * window; int * navigation; int * webbrowser; int * doc; } ;
typedef TYPE_1__ NSContainer ;


 int DestroyWindow (int *) ;
 int FALSE ;
 int SW_HIDE ;
 int SetParent (int *,int *) ;
 int ShowWindow (int *,int ) ;
 int TRACE (char*,TYPE_1__*) ;
 int nsIBaseWindow_Destroy (int *) ;
 int nsIBaseWindow_Release (int *) ;
 int nsIBaseWindow_SetVisibility (int *,int ) ;
 int nsIController_Release (int *) ;
 int nsIEditor_Release (int *) ;
 int nsIURIContentListener_Release (int *) ;
 int nsIWebBrowserChrome_Release (int *) ;
 int nsIWebBrowserFocus_Release (int *) ;
 int nsIWebBrowser_Release (int *) ;
 int nsIWebBrowser_SetContainerWindow (int *,int *) ;
 int nsIWebNavigation_Release (int *) ;

void NSContainer_Release(NSContainer *This)
{
    TRACE("(%p)\n", This);

    This->doc = ((void*)0);

    ShowWindow(This->hwnd, SW_HIDE);
    SetParent(This->hwnd, ((void*)0));

    nsIBaseWindow_SetVisibility(This->window, FALSE);
    nsIBaseWindow_Destroy(This->window);

    nsIWebBrowser_SetContainerWindow(This->webbrowser, ((void*)0));

    nsIWebBrowser_Release(This->webbrowser);
    This->webbrowser = ((void*)0);

    nsIWebNavigation_Release(This->navigation);
    This->navigation = ((void*)0);

    nsIBaseWindow_Release(This->window);
    This->window = ((void*)0);

    nsIWebBrowserFocus_Release(This->focus);
    This->focus = ((void*)0);

    if(This->editor_controller) {
        nsIController_Release(This->editor_controller);
        This->editor_controller = ((void*)0);
    }

    if(This->editor) {
        nsIEditor_Release(This->editor);
        This->editor = ((void*)0);
    }

    if(This->content_listener) {
        nsIURIContentListener_Release(This->content_listener);
        This->content_listener = ((void*)0);
    }

    if(This->hwnd) {
        DestroyWindow(This->hwnd);
        This->hwnd = ((void*)0);
    }

    nsIWebBrowserChrome_Release(&This->nsIWebBrowserChrome_iface);
}
