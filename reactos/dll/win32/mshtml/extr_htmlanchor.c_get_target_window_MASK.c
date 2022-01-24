#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsAString ;
typedef  char WCHAR ;
struct TYPE_9__ {int /*<<< orphan*/  IHTMLWindow2_iface; } ;
struct TYPE_10__ {TYPE_1__ base; struct TYPE_10__* parent; } ;
typedef  int /*<<< orphan*/  PRUnichar ;
typedef  TYPE_2__ HTMLOuterWindow ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,char const*) ; 

HTMLOuterWindow *FUNC9(HTMLOuterWindow *window, nsAString *target_str, BOOL *use_new_window)
{
    HTMLOuterWindow *top_window, *ret_window;
    const PRUnichar *target;
    HRESULT hres;

    static const WCHAR _parentW[] = {'_','p','a','r','e','n','t',0};
    static const WCHAR _selfW[] = {'_','s','e','l','f',0};
    static const WCHAR _topW[] = {'_','t','o','p',0};

    *use_new_window = FALSE;

    FUNC7(target_str, &target);
    FUNC2("%s\n", FUNC4(target));

    if(!*target || !FUNC8(target, _selfW)) {
        FUNC1(&window->base.IHTMLWindow2_iface);
        return window;
    }

    if(!FUNC8(target, _topW)) {
        FUNC6(window, &top_window);
        FUNC1(&top_window->base.IHTMLWindow2_iface);
        return top_window;
    }

    if(!FUNC8(target, _parentW)) {
        if(!window->parent) {
            FUNC3("Window has no parent, treat as self\n");
            FUNC1(&window->base.IHTMLWindow2_iface);
            return window;
        }

        FUNC1(&window->parent->base.IHTMLWindow2_iface);
        return window->parent;
    }

    FUNC6(window, &top_window);

    hres = FUNC5(top_window, target, TRUE, &ret_window);
    if(FUNC0(hres) || !ret_window) {
        *use_new_window = TRUE;
        return NULL;
    }

    FUNC1(&ret_window->base.IHTMLWindow2_iface);
    return ret_window;
}