#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIWebBrowserSetup ;
struct TYPE_7__ {scalar_t__ scriptmode; TYPE_2__* doc_obj; } ;
struct TYPE_6__ {TYPE_1__* nscontainer; } ;
struct TYPE_5__ {int /*<<< orphan*/  webbrowser; } ;
typedef  scalar_t__ SCRIPTMODE ;
typedef  TYPE_3__ HTMLOuterWindow ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_nsIWebBrowserSetup ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCRIPTMODE_ACTIVESCRIPT ; 
 scalar_t__ SCRIPTMODE_GECKO ; 
 int /*<<< orphan*/  SETUP_ALLOW_JAVASCRIPT ; 
 int /*<<< orphan*/  SETUP_DISABLE_NOSCRIPT ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 

void FUNC8(HTMLOuterWindow *window, SCRIPTMODE mode)
{
    nsIWebBrowserSetup *setup;
    nsresult nsres;

    if(mode == SCRIPTMODE_ACTIVESCRIPT && !FUNC4()) {
        FUNC3("jscript.dll not available\n");
        window->scriptmode = SCRIPTMODE_GECKO;
        return;
    }

    window->scriptmode = mode;

    if(!window->doc_obj->nscontainer || !window->doc_obj->nscontainer->webbrowser)
        return;

    nsres = FUNC7(window->doc_obj->nscontainer->webbrowser,
            &IID_nsIWebBrowserSetup, (void**)&setup);
    if(FUNC2(nsres)) {
        nsres = FUNC6(setup, SETUP_ALLOW_JAVASCRIPT,
                window->scriptmode == SCRIPTMODE_GECKO);

        if(FUNC2(nsres))
            nsres = FUNC6(setup, SETUP_DISABLE_NOSCRIPT, TRUE);

        FUNC5(setup);
    }

    if(FUNC1(nsres))
        FUNC0("JavaScript setup failed: %08x\n", nsres);
}