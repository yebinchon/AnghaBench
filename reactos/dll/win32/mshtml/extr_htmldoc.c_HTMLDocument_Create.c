
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_16__ ;
typedef struct TYPE_17__ TYPE_13__ ;


typedef int nsresult ;
typedef int nsIDOMWindow ;
struct TYPE_25__ {int IDispatchEx_iface; } ;
struct TYPE_24__ {TYPE_4__* doc_node; TYPE_16__* window; TYPE_5__* doc_obj; } ;
struct TYPE_19__ {int * lpVtbl; } ;
struct TYPE_23__ {int ref; TYPE_6__ basedoc; TYPE_13__* nscontainer; int usermode; TYPE_1__ ICustomDoc_iface; TYPE_7__ dispex; } ;
struct TYPE_22__ {int basedoc; } ;
struct TYPE_21__ {TYPE_2__* inner_window; } ;
struct TYPE_20__ {TYPE_4__* doc; } ;
struct TYPE_18__ {TYPE_3__ base; } ;
struct TYPE_17__ {int webbrowser; } ;
typedef int REFIID ;
typedef int IUnknown ;
typedef TYPE_5__ HTMLDocumentObj ;
typedef int HRESULT ;


 int CustomDocVtbl ;
 int ERR (char*,...) ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int HTMLDocumentObj_dispex ;
 int HTMLOuterWindow_Create (TYPE_5__*,int *,int *,TYPE_16__**) ;
 scalar_t__ NS_FAILED (int ) ;
 int S_OK ;
 int TRACE (char*,int *,int ,void**) ;
 int TargetContainer_Init (TYPE_5__*) ;
 int UNKNOWN_USERMODE ;
 int create_nscontainer (TYPE_5__*,TYPE_13__**) ;
 int debugstr_mshtml_guid (int ) ;
 int get_thread_hwnd () ;
 TYPE_5__* heap_alloc_zero (int) ;
 int htmldoc_addref (int *) ;
 int htmldoc_query_interface (TYPE_6__*,int ,void**) ;
 int htmldoc_release (TYPE_6__*) ;
 int init_binding_ui (TYPE_5__*) ;
 int init_dispex (TYPE_7__*,int *,int *) ;
 int init_doc (TYPE_6__*,int *,int *) ;
 int nsIDOMWindow_Release (int *) ;
 int nsIWebBrowser_GetContentDOMWindow (int ,int **) ;

HRESULT HTMLDocument_Create(IUnknown *pUnkOuter, REFIID riid, void** ppvObject)
{
    HTMLDocumentObj *doc;
    nsIDOMWindow *nswindow = ((void*)0);
    nsresult nsres;
    HRESULT hres;

    TRACE("(%p %s %p)\n", pUnkOuter, debugstr_mshtml_guid(riid), ppvObject);

    doc = heap_alloc_zero(sizeof(HTMLDocumentObj));
    if(!doc)
        return E_OUTOFMEMORY;

    init_dispex(&doc->dispex, (IUnknown*)&doc->ICustomDoc_iface, &HTMLDocumentObj_dispex);
    init_doc(&doc->basedoc, (IUnknown*)&doc->ICustomDoc_iface, &doc->dispex.IDispatchEx_iface);
    TargetContainer_Init(doc);

    doc->ICustomDoc_iface.lpVtbl = &CustomDocVtbl;
    doc->ref = 1;
    doc->basedoc.doc_obj = doc;

    doc->usermode = UNKNOWN_USERMODE;

    init_binding_ui(doc);

    hres = create_nscontainer(doc, &doc->nscontainer);
    if(FAILED(hres)) {
        ERR("Failed to init Gecko, returning CLASS_E_CLASSNOTAVAILABLE\n");
        htmldoc_release(&doc->basedoc);
        return hres;
    }

    hres = htmldoc_query_interface(&doc->basedoc, riid, ppvObject);
    htmldoc_release(&doc->basedoc);
    if(FAILED(hres))
        return hres;

    nsres = nsIWebBrowser_GetContentDOMWindow(doc->nscontainer->webbrowser, &nswindow);
    if(NS_FAILED(nsres))
        ERR("GetContentDOMWindow failed: %08x\n", nsres);

    hres = HTMLOuterWindow_Create(doc, nswindow, ((void*)0) , &doc->basedoc.window);
    if(nswindow)
        nsIDOMWindow_Release(nswindow);
    if(FAILED(hres)) {
        htmldoc_release(&doc->basedoc);
        return hres;
    }

    if(!doc->basedoc.doc_node && doc->basedoc.window->base.inner_window->doc) {
        doc->basedoc.doc_node = doc->basedoc.window->base.inner_window->doc;
        htmldoc_addref(&doc->basedoc.doc_node->basedoc);
    }

    get_thread_hwnd();

    return S_OK;
}
