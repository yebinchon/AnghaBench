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
struct TYPE_4__ {int /*<<< orphan*/  nsIWebBrowserChrome_iface; int /*<<< orphan*/ * hwnd; int /*<<< orphan*/ * content_listener; int /*<<< orphan*/ * editor; int /*<<< orphan*/ * editor_controller; int /*<<< orphan*/ * focus; int /*<<< orphan*/ * window; int /*<<< orphan*/ * navigation; int /*<<< orphan*/ * webbrowser; int /*<<< orphan*/ * doc; } ;
typedef  TYPE_1__ NSContainer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

void FUNC15(NSContainer *This)
{
    FUNC3("(%p)\n", This);

    This->doc = NULL;

    FUNC2(This->hwnd, SW_HIDE);
    FUNC1(This->hwnd, NULL);

    FUNC6(This->window, FALSE);
    FUNC4(This->window);

    FUNC13(This->webbrowser, NULL);

    FUNC12(This->webbrowser);
    This->webbrowser = NULL;

    FUNC14(This->navigation);
    This->navigation = NULL;

    FUNC5(This->window);
    This->window = NULL;

    FUNC11(This->focus);
    This->focus = NULL;

    if(This->editor_controller) {
        FUNC7(This->editor_controller);
        This->editor_controller = NULL;
    }

    if(This->editor) {
        FUNC8(This->editor);
        This->editor = NULL;
    }

    if(This->content_listener) {
        FUNC9(This->content_listener);
        This->content_listener = NULL;
    }

    if(This->hwnd) {
        FUNC0(This->hwnd);
        This->hwnd = NULL;
    }

    FUNC10(&This->nsIWebBrowserChrome_iface);
}