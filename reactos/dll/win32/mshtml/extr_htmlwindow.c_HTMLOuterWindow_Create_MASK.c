#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  windowref_t ;
typedef  int /*<<< orphan*/  nsIDOMWindow ;
struct TYPE_12__ {int ref; TYPE_2__* window; } ;
struct TYPE_10__ {int /*<<< orphan*/ * inner_window; int /*<<< orphan*/  IHTMLWindow2_iface; TYPE_2__* outer_window; } ;
struct TYPE_11__ {TYPE_1__ base; int /*<<< orphan*/  sibling_entry; int /*<<< orphan*/  children; struct TYPE_11__* parent; int /*<<< orphan*/  entry; int /*<<< orphan*/  task_magic; int /*<<< orphan*/  secmgr; int /*<<< orphan*/  pending_window; int /*<<< orphan*/  readystate; int /*<<< orphan*/  scriptmode; int /*<<< orphan*/ * nswindow; TYPE_4__* window_ref; int /*<<< orphan*/ * doc_obj; } ;
typedef  TYPE_2__ HTMLOuterWindow ;
typedef  int /*<<< orphan*/  HTMLDocumentObj ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  READYSTATE_UNINITIALIZED ; 
 int /*<<< orphan*/  SCRIPTMODE_GECKO ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_4__* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  window_list ; 

HRESULT FUNC16(HTMLDocumentObj *doc_obj, nsIDOMWindow *nswindow,
        HTMLOuterWindow *parent, HTMLOuterWindow **ret)
{
    HTMLOuterWindow *window;
    HRESULT hres;

    window = FUNC6(sizeof(HTMLOuterWindow));
    if(!window)
        return E_OUTOFMEMORY;

    window->base.outer_window = window;
    window->base.inner_window = NULL;

    window->window_ref = FUNC9(sizeof(windowref_t));
    if(!window->window_ref) {
        FUNC10(window);
        return E_OUTOFMEMORY;
    }

    window->doc_obj = doc_obj;

    window->window_ref->window = window;
    window->window_ref->ref = 1;

    if(nswindow) {
        FUNC14(nswindow);
        window->nswindow = nswindow;
    }

    window->scriptmode = parent ? parent->scriptmode : SCRIPTMODE_GECKO;
    window->readystate = READYSTATE_UNINITIALIZED;

    hres = FUNC7(window, NULL);
    if(FUNC4(hres))
        hres = FUNC15(window->pending_window);
    if(FUNC1(hres)) {
        FUNC3(&window->base.IHTMLWindow2_iface);
        return hres;
    }

    hres = FUNC0(NULL, &window->secmgr, 0);
    if(FUNC1(hres)) {
        FUNC3(&window->base.IHTMLWindow2_iface);
        return hres;
    }

    window->task_magic = FUNC8();

    FUNC13(&window->children);
    FUNC11(&window_list, &window->entry);

    if(parent) {
        FUNC2(&window->base.IHTMLWindow2_iface);

        window->parent = parent;
        FUNC12(&parent->children, &window->sibling_entry);
    }

    FUNC5("%p inner_window %p\n", window, window->base.inner_window);

    *ret = window;
    return S_OK;
}