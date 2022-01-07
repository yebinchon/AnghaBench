
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsIWebBrowserSetup ;
typedef int nsIScrollable ;
struct TYPE_4__ {int webbrowser; int nsIURIContentListener_iface; int window; int hwnd; int focus; int navigation; int nsIWebBrowserChrome_iface; } ;
typedef TYPE_1__ NSContainer ;
typedef int HRESULT ;


 int CreateWindowExW (int ,int ,int *,int,int ,int ,int,int,int ,int *,int ,TYPE_1__*) ;
 int ERR (char*,...) ;
 int E_FAIL ;
 int FALSE ;
 int GetDesktopWindow () ;
 int IID_nsIBaseWindow ;
 int IID_nsIScrollable ;
 int IID_nsIWebBrowser ;
 int IID_nsIWebBrowserFocus ;
 int IID_nsIWebBrowserSetup ;
 int IID_nsIWebNavigation ;
 scalar_t__ NS_FAILED (int ) ;
 scalar_t__ NS_SUCCEEDED (int ) ;
 int NS_WEBBROWSER_CONTRACTID ;
 int SETUP_IS_CHROME_WRAPPER ;
 int S_OK ;
 int ScrollOrientation_X ;
 int ScrollOrientation_Y ;
 int Scrollbar_Always ;
 int Scrollbar_Auto ;
 int WARN (char*,...) ;
 int WS_CHILD ;
 int WS_CLIPCHILDREN ;
 int WS_CLIPSIBLINGS ;
 int hInst ;
 int nsIBaseWindow_Create (int ) ;
 int nsIBaseWindow_InitWindow (int ,int ,int *,int ,int ,int,int) ;
 int nsIBaseWindow_SetEnabled (int ,int ) ;
 int nsIBaseWindow_SetVisibility (int ,int ) ;
 int nsIComponentManager_CreateInstanceByContractID (int ,int ,int *,int *,void**) ;
 int nsIScrollable_Release (int *) ;
 int nsIScrollable_SetDefaultScrollbarPreferences (int *,int ,int ) ;
 int nsIWebBrowserSetup_Release (int *) ;
 int nsIWebBrowserSetup_SetProperty (int *,int ,int ) ;
 int nsIWebBrowser_QueryInterface (int ,int *,void**) ;
 int nsIWebBrowser_SetContainerWindow (int ,int *) ;
 int nsIWebBrowser_SetParentURIContentListener (int ,int *) ;
 int nscontainer_class ;
 int pCompMgr ;
 int register_nscontainer_class () ;
 int wszNsContainer ;

__attribute__((used)) static HRESULT init_nscontainer(NSContainer *nscontainer)
{
    nsIWebBrowserSetup *wbsetup;
    nsIScrollable *scrollable;
    nsresult nsres;

    nsres = nsIComponentManager_CreateInstanceByContractID(pCompMgr, NS_WEBBROWSER_CONTRACTID,
            ((void*)0), &IID_nsIWebBrowser, (void**)&nscontainer->webbrowser);
    if(NS_FAILED(nsres)) {
        ERR("Creating WebBrowser failed: %08x\n", nsres);
        return E_FAIL;
    }

    nsres = nsIWebBrowser_SetContainerWindow(nscontainer->webbrowser, &nscontainer->nsIWebBrowserChrome_iface);
    if(NS_FAILED(nsres)) {
        ERR("SetContainerWindow failed: %08x\n", nsres);
        return E_FAIL;
    }

    nsres = nsIWebBrowser_QueryInterface(nscontainer->webbrowser, &IID_nsIBaseWindow,
            (void**)&nscontainer->window);
    if(NS_FAILED(nsres)) {
        ERR("Could not get nsIBaseWindow interface: %08x\n", nsres);
        return E_FAIL;
    }

    nsres = nsIWebBrowser_QueryInterface(nscontainer->webbrowser, &IID_nsIWebBrowserSetup,
                                         (void**)&wbsetup);
    if(NS_SUCCEEDED(nsres)) {
        nsres = nsIWebBrowserSetup_SetProperty(wbsetup, SETUP_IS_CHROME_WRAPPER, FALSE);
        nsIWebBrowserSetup_Release(wbsetup);
        if(NS_FAILED(nsres)) {
            ERR("SetProperty(SETUP_IS_CHROME_WRAPPER) failed: %08x\n", nsres);
            return E_FAIL;
        }
    }else {
        ERR("Could not get nsIWebBrowserSetup interface\n");
        return E_FAIL;
    }

    nsres = nsIWebBrowser_QueryInterface(nscontainer->webbrowser, &IID_nsIWebNavigation,
            (void**)&nscontainer->navigation);
    if(NS_FAILED(nsres)) {
        ERR("Could not get nsIWebNavigation interface: %08x\n", nsres);
        return E_FAIL;
    }

    nsres = nsIWebBrowser_QueryInterface(nscontainer->webbrowser, &IID_nsIWebBrowserFocus,
            (void**)&nscontainer->focus);
    if(NS_FAILED(nsres)) {
        ERR("Could not get nsIWebBrowserFocus interface: %08x\n", nsres);
        return E_FAIL;
    }

    if(!nscontainer_class) {
        register_nscontainer_class();
        if(!nscontainer_class)
            return E_FAIL;
    }

    nscontainer->hwnd = CreateWindowExW(0, wszNsContainer, ((void*)0),
            WS_CHILD | WS_CLIPSIBLINGS | WS_CLIPCHILDREN, 0, 0, 100, 100,
            GetDesktopWindow(), ((void*)0), hInst, nscontainer);
    if(!nscontainer->hwnd) {
        WARN("Could not create window\n");
        return E_FAIL;
    }

    nsres = nsIBaseWindow_InitWindow(nscontainer->window, nscontainer->hwnd, ((void*)0), 0, 0, 100, 100);
    if(NS_SUCCEEDED(nsres)) {
        nsres = nsIBaseWindow_Create(nscontainer->window);
        if(NS_FAILED(nsres)) {
            WARN("Creating window failed: %08x\n", nsres);
            return E_FAIL;
        }

        nsIBaseWindow_SetVisibility(nscontainer->window, FALSE);
        nsIBaseWindow_SetEnabled(nscontainer->window, FALSE);
    }else {
        ERR("InitWindow failed: %08x\n", nsres);
        return E_FAIL;
    }

    nsres = nsIWebBrowser_SetParentURIContentListener(nscontainer->webbrowser,
            &nscontainer->nsIURIContentListener_iface);
    if(NS_FAILED(nsres))
        ERR("SetParentURIContentListener failed: %08x\n", nsres);

    nsres = nsIWebBrowser_QueryInterface(nscontainer->webbrowser, &IID_nsIScrollable, (void**)&scrollable);
    if(NS_SUCCEEDED(nsres)) {
        nsres = nsIScrollable_SetDefaultScrollbarPreferences(scrollable,
                ScrollOrientation_Y, Scrollbar_Always);
        if(NS_FAILED(nsres))
            ERR("Could not set default Y scrollbar prefs: %08x\n", nsres);

        nsres = nsIScrollable_SetDefaultScrollbarPreferences(scrollable,
                ScrollOrientation_X, Scrollbar_Auto);
        if(NS_FAILED(nsres))
            ERR("Could not set default X scrollbar prefs: %08x\n", nsres);

        nsIScrollable_Release(scrollable);
    }else {
        ERR("Could not get nsIScrollable: %08x\n", nsres);
    }

    return S_OK;
}
