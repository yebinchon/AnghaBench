
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsIWebBrowserSetup ;
struct TYPE_7__ {scalar_t__ scriptmode; TYPE_2__* doc_obj; } ;
struct TYPE_6__ {TYPE_1__* nscontainer; } ;
struct TYPE_5__ {int webbrowser; } ;
typedef scalar_t__ SCRIPTMODE ;
typedef TYPE_3__ HTMLOuterWindow ;


 int ERR (char*,int ) ;
 int IID_nsIWebBrowserSetup ;
 scalar_t__ NS_FAILED (int ) ;
 scalar_t__ NS_SUCCEEDED (int ) ;
 scalar_t__ SCRIPTMODE_ACTIVESCRIPT ;
 scalar_t__ SCRIPTMODE_GECKO ;
 int SETUP_ALLOW_JAVASCRIPT ;
 int SETUP_DISABLE_NOSCRIPT ;
 int TRACE (char*) ;
 int TRUE ;
 int is_jscript_available () ;
 int nsIWebBrowserSetup_Release (int *) ;
 int nsIWebBrowserSetup_SetProperty (int *,int ,int) ;
 int nsIWebBrowser_QueryInterface (int ,int *,void**) ;

void set_script_mode(HTMLOuterWindow *window, SCRIPTMODE mode)
{
    nsIWebBrowserSetup *setup;
    nsresult nsres;

    if(mode == SCRIPTMODE_ACTIVESCRIPT && !is_jscript_available()) {
        TRACE("jscript.dll not available\n");
        window->scriptmode = SCRIPTMODE_GECKO;
        return;
    }

    window->scriptmode = mode;

    if(!window->doc_obj->nscontainer || !window->doc_obj->nscontainer->webbrowser)
        return;

    nsres = nsIWebBrowser_QueryInterface(window->doc_obj->nscontainer->webbrowser,
            &IID_nsIWebBrowserSetup, (void**)&setup);
    if(NS_SUCCEEDED(nsres)) {
        nsres = nsIWebBrowserSetup_SetProperty(setup, SETUP_ALLOW_JAVASCRIPT,
                window->scriptmode == SCRIPTMODE_GECKO);

        if(NS_SUCCEEDED(nsres))
            nsres = nsIWebBrowserSetup_SetProperty(setup, SETUP_DISABLE_NOSCRIPT, TRUE);

        nsIWebBrowserSetup_Release(setup);
    }

    if(NS_FAILED(nsres))
        ERR("JavaScript setup failed: %08x\n", nsres);
}
