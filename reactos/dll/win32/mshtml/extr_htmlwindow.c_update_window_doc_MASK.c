#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIDOMHTMLDocument ;
typedef  int /*<<< orphan*/  nsIDOMDocument ;
typedef  int /*<<< orphan*/  nsAString ;
struct TYPE_14__ {TYPE_10__* doc_node; TYPE_4__* window; } ;
struct TYPE_17__ {scalar_t__ usermode; TYPE_3__ basedoc; } ;
struct TYPE_12__ {TYPE_4__* outer_window; } ;
struct TYPE_16__ {TYPE_10__* doc; TYPE_1__ base; } ;
struct TYPE_13__ {TYPE_5__* inner_window; } ;
struct TYPE_15__ {TYPE_8__* doc_obj; TYPE_5__* pending_window; TYPE_2__ base; int /*<<< orphan*/  nswindow; } ;
struct TYPE_11__ {int /*<<< orphan*/  basedoc; int /*<<< orphan*/  nsdoc; } ;
typedef  char PRUnichar ;
typedef  TYPE_4__ HTMLOuterWindow ;
typedef  TYPE_5__ HTMLInnerWindow ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ EDITMODE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_UNEXPECTED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_nsIDOMHTMLDocument ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_8__*,TYPE_5__*,TYPE_10__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

HRESULT FUNC15(HTMLInnerWindow *window)
{
    HTMLOuterWindow *outer_window = window->base.outer_window;
    nsIDOMHTMLDocument *nshtmldoc;
    nsIDOMDocument *nsdoc;
    nsresult nsres;
    HRESULT hres;

    FUNC3(!window->doc);

    if(!outer_window) {
        FUNC0("NULL outer window\n");
        return E_UNEXPECTED;
    }

    nsres = FUNC14(outer_window->nswindow, &nsdoc);
    if(FUNC2(nsres) || !nsdoc) {
        FUNC0("GetDocument failed: %08x\n", nsres);
        return E_FAIL;
    }

    nsres = FUNC10(nsdoc, &IID_nsIDOMHTMLDocument, (void**)&nshtmldoc);
    FUNC11(nsdoc);
    if(FUNC2(nsres)) {
        FUNC0("Could not get nsIDOMHTMLDocument iface: %08x\n", nsres);
        return E_FAIL;
    }

    hres = FUNC4(nshtmldoc, outer_window->doc_obj, window, &window->doc);
    FUNC12(nshtmldoc);
    if(FUNC1(hres))
        return hres;

    if(outer_window->doc_obj->usermode == EDITMODE) {
        nsAString mode_str;
        nsresult nsres;

        static const PRUnichar onW[] = {'o','n',0};

        FUNC9(&mode_str, onW);
        nsres = FUNC13(window->doc->nsdoc, &mode_str);
        FUNC8(&mode_str);
        if(FUNC2(nsres))
            FUNC0("SetDesignMode failed: %08x\n", nsres);
    }

    if(window != outer_window->pending_window) {
        FUNC0("not current pending window\n");
        return S_OK;
    }

    if(outer_window->base.inner_window)
        FUNC5(outer_window->base.inner_window);
    outer_window->base.inner_window = window;
    outer_window->pending_window = NULL;

    if(outer_window->doc_obj->basedoc.window == outer_window || !outer_window->doc_obj->basedoc.window) {
        if(outer_window->doc_obj->basedoc.doc_node)
            FUNC7(&outer_window->doc_obj->basedoc.doc_node->basedoc);
        outer_window->doc_obj->basedoc.doc_node = window->doc;
        FUNC6(&window->doc->basedoc);
    }

    return hres;
}