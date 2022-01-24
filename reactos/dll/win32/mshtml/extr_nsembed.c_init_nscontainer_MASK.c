#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIWebBrowserSetup ;
typedef  int /*<<< orphan*/  nsIScrollable ;
struct TYPE_4__ {int /*<<< orphan*/  webbrowser; int /*<<< orphan*/  nsIURIContentListener_iface; int /*<<< orphan*/  window; int /*<<< orphan*/  hwnd; int /*<<< orphan*/  focus; int /*<<< orphan*/  navigation; int /*<<< orphan*/  nsIWebBrowserChrome_iface; } ;
typedef  TYPE_1__ NSContainer ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  IID_nsIBaseWindow ; 
 int /*<<< orphan*/  IID_nsIScrollable ; 
 int /*<<< orphan*/  IID_nsIWebBrowser ; 
 int /*<<< orphan*/  IID_nsIWebBrowserFocus ; 
 int /*<<< orphan*/  IID_nsIWebBrowserSetup ; 
 int /*<<< orphan*/  IID_nsIWebNavigation ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NS_WEBBROWSER_CONTRACTID ; 
 int /*<<< orphan*/  SETUP_IS_CHROME_WRAPPER ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  ScrollOrientation_X ; 
 int /*<<< orphan*/  ScrollOrientation_Y ; 
 int /*<<< orphan*/  Scrollbar_Always ; 
 int /*<<< orphan*/  Scrollbar_Auto ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int WS_CHILD ; 
 int WS_CLIPCHILDREN ; 
 int WS_CLIPSIBLINGS ; 
 int /*<<< orphan*/  hInst ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nscontainer_class ; 
 int /*<<< orphan*/  pCompMgr ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  wszNsContainer ; 

__attribute__((used)) static HRESULT FUNC19(NSContainer *nscontainer)
{
    nsIWebBrowserSetup *wbsetup;
    nsIScrollable *scrollable;
    nsresult nsres;

    nsres = FUNC10(pCompMgr, NS_WEBBROWSER_CONTRACTID,
            NULL, &IID_nsIWebBrowser, (void**)&nscontainer->webbrowser);
    if(FUNC3(nsres)) {
        FUNC1("Creating WebBrowser failed: %08x\n", nsres);
        return E_FAIL;
    }

    nsres = FUNC16(nscontainer->webbrowser, &nscontainer->nsIWebBrowserChrome_iface);
    if(FUNC3(nsres)) {
        FUNC1("SetContainerWindow failed: %08x\n", nsres);
        return E_FAIL;
    }

    nsres = FUNC15(nscontainer->webbrowser, &IID_nsIBaseWindow,
            (void**)&nscontainer->window);
    if(FUNC3(nsres)) {
        FUNC1("Could not get nsIBaseWindow interface: %08x\n", nsres);
        return E_FAIL;
    }

    nsres = FUNC15(nscontainer->webbrowser, &IID_nsIWebBrowserSetup,
                                         (void**)&wbsetup);
    if(FUNC4(nsres)) {
        nsres = FUNC14(wbsetup, SETUP_IS_CHROME_WRAPPER, FALSE);
        FUNC13(wbsetup);
        if(FUNC3(nsres)) {
            FUNC1("SetProperty(SETUP_IS_CHROME_WRAPPER) failed: %08x\n", nsres);
            return E_FAIL;
        }
    }else {
        FUNC1("Could not get nsIWebBrowserSetup interface\n");
        return E_FAIL;
    }

    nsres = FUNC15(nscontainer->webbrowser, &IID_nsIWebNavigation,
            (void**)&nscontainer->navigation);
    if(FUNC3(nsres)) {
        FUNC1("Could not get nsIWebNavigation interface: %08x\n", nsres);
        return E_FAIL;
    }

    nsres = FUNC15(nscontainer->webbrowser, &IID_nsIWebBrowserFocus,
            (void**)&nscontainer->focus);
    if(FUNC3(nsres)) {
        FUNC1("Could not get nsIWebBrowserFocus interface: %08x\n", nsres);
        return E_FAIL;
    }

    if(!nscontainer_class) {
        FUNC18();
        if(!nscontainer_class)
            return E_FAIL;
    }

    nscontainer->hwnd = FUNC0(0, wszNsContainer, NULL,
            WS_CHILD | WS_CLIPSIBLINGS | WS_CLIPCHILDREN, 0, 0, 100, 100,
            FUNC2(), NULL, hInst, nscontainer);
    if(!nscontainer->hwnd) {
        FUNC5("Could not create window\n");
        return E_FAIL;
    }

    nsres = FUNC7(nscontainer->window, nscontainer->hwnd, NULL, 0, 0, 100, 100);
    if(FUNC4(nsres)) {
        nsres = FUNC6(nscontainer->window);
        if(FUNC3(nsres)) {
            FUNC5("Creating window failed: %08x\n", nsres);
            return E_FAIL;
        }

        FUNC9(nscontainer->window, FALSE);
        FUNC8(nscontainer->window, FALSE);
    }else {
        FUNC1("InitWindow failed: %08x\n", nsres);
        return E_FAIL;
    }

    nsres = FUNC17(nscontainer->webbrowser,
            &nscontainer->nsIURIContentListener_iface);
    if(FUNC3(nsres))
        FUNC1("SetParentURIContentListener failed: %08x\n", nsres);

    nsres = FUNC15(nscontainer->webbrowser, &IID_nsIScrollable, (void**)&scrollable);
    if(FUNC4(nsres)) {
        nsres = FUNC12(scrollable,
                ScrollOrientation_Y, Scrollbar_Always);
        if(FUNC3(nsres))
            FUNC1("Could not set default Y scrollbar prefs: %08x\n", nsres);

        nsres = FUNC12(scrollable,
                ScrollOrientation_X, Scrollbar_Auto);
        if(FUNC3(nsres))
            FUNC1("Could not set default X scrollbar prefs: %08x\n", nsres);

        FUNC11(scrollable);
    }else {
        FUNC1("Could not get nsIScrollable: %08x\n", nsres);
    }

    return S_OK;
}