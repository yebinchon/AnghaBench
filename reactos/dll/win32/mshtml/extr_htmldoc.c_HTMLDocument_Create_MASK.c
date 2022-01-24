#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_16__ ;
typedef  struct TYPE_17__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIDOMWindow ;
struct TYPE_25__ {int /*<<< orphan*/  IDispatchEx_iface; } ;
struct TYPE_24__ {TYPE_4__* doc_node; TYPE_16__* window; TYPE_5__* doc_obj; } ;
struct TYPE_19__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_23__ {int ref; TYPE_6__ basedoc; TYPE_13__* nscontainer; int /*<<< orphan*/  usermode; TYPE_1__ ICustomDoc_iface; TYPE_7__ dispex; } ;
struct TYPE_22__ {int /*<<< orphan*/  basedoc; } ;
struct TYPE_21__ {TYPE_2__* inner_window; } ;
struct TYPE_20__ {TYPE_4__* doc; } ;
struct TYPE_18__ {TYPE_3__ base; } ;
struct TYPE_17__ {int /*<<< orphan*/  webbrowser; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_5__ HTMLDocumentObj ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CustomDocVtbl ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HTMLDocumentObj_dispex ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_16__**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  UNKNOWN_USERMODE ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,TYPE_13__**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_5__* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

HRESULT FUNC18(IUnknown *pUnkOuter, REFIID riid, void** ppvObject)
{
    HTMLDocumentObj *doc;
    nsIDOMWindow *nswindow = NULL;
    nsresult nsres;
    HRESULT hres;

    FUNC4("(%p %s %p)\n", pUnkOuter, FUNC7(riid), ppvObject);

    doc = FUNC9(sizeof(HTMLDocumentObj));
    if(!doc)
        return E_OUTOFMEMORY;

    FUNC14(&doc->dispex, (IUnknown*)&doc->ICustomDoc_iface, &HTMLDocumentObj_dispex);
    FUNC15(&doc->basedoc, (IUnknown*)&doc->ICustomDoc_iface, &doc->dispex.IDispatchEx_iface);
    FUNC5(doc);

    doc->ICustomDoc_iface.lpVtbl = &CustomDocVtbl;
    doc->ref = 1;
    doc->basedoc.doc_obj = doc;

    doc->usermode = UNKNOWN_USERMODE;

    FUNC13(doc);

    hres = FUNC6(doc, &doc->nscontainer);
    if(FUNC1(hres)) {
        FUNC0("Failed to init Gecko, returning CLASS_E_CLASSNOTAVAILABLE\n");
        FUNC12(&doc->basedoc);
        return hres;
    }

    hres = FUNC11(&doc->basedoc, riid, ppvObject);
    FUNC12(&doc->basedoc);
    if(FUNC1(hres))
        return hres;

    nsres = FUNC17(doc->nscontainer->webbrowser, &nswindow);
    if(FUNC3(nsres))
        FUNC0("GetContentDOMWindow failed: %08x\n", nsres);

    hres = FUNC2(doc, nswindow, NULL /* FIXME */, &doc->basedoc.window);
    if(nswindow)
        FUNC16(nswindow);
    if(FUNC1(hres)) {
        FUNC12(&doc->basedoc);
        return hres;
    }

    if(!doc->basedoc.doc_node && doc->basedoc.window->base.inner_window->doc) {
        doc->basedoc.doc_node = doc->basedoc.window->base.inner_window->doc;
        FUNC10(&doc->basedoc.doc_node->basedoc);
    }

    FUNC8();

    return S_OK;
}