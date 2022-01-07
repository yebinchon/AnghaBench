
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int windowref_t ;
typedef int nsIDOMWindow ;
struct TYPE_12__ {int ref; TYPE_2__* window; } ;
struct TYPE_10__ {int * inner_window; int IHTMLWindow2_iface; TYPE_2__* outer_window; } ;
struct TYPE_11__ {TYPE_1__ base; int sibling_entry; int children; struct TYPE_11__* parent; int entry; int task_magic; int secmgr; int pending_window; int readystate; int scriptmode; int * nswindow; TYPE_4__* window_ref; int * doc_obj; } ;
typedef TYPE_2__ HTMLOuterWindow ;
typedef int HTMLDocumentObj ;
typedef int HRESULT ;


 int CoInternetCreateSecurityManager (int *,int *,int ) ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int IHTMLWindow2_AddRef (int *) ;
 int IHTMLWindow2_Release (int *) ;
 int READYSTATE_UNINITIALIZED ;
 int SCRIPTMODE_GECKO ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int TRACE (char*,TYPE_2__*,int *) ;
 TYPE_2__* alloc_window (int) ;
 int create_pending_window (TYPE_2__*,int *) ;
 int get_task_target_magic () ;
 TYPE_4__* heap_alloc (int) ;
 int heap_free (TYPE_2__*) ;
 int list_add_head (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int list_init (int *) ;
 int nsIDOMWindow_AddRef (int *) ;
 int update_window_doc (int ) ;
 int window_list ;

HRESULT HTMLOuterWindow_Create(HTMLDocumentObj *doc_obj, nsIDOMWindow *nswindow,
        HTMLOuterWindow *parent, HTMLOuterWindow **ret)
{
    HTMLOuterWindow *window;
    HRESULT hres;

    window = alloc_window(sizeof(HTMLOuterWindow));
    if(!window)
        return E_OUTOFMEMORY;

    window->base.outer_window = window;
    window->base.inner_window = ((void*)0);

    window->window_ref = heap_alloc(sizeof(windowref_t));
    if(!window->window_ref) {
        heap_free(window);
        return E_OUTOFMEMORY;
    }

    window->doc_obj = doc_obj;

    window->window_ref->window = window;
    window->window_ref->ref = 1;

    if(nswindow) {
        nsIDOMWindow_AddRef(nswindow);
        window->nswindow = nswindow;
    }

    window->scriptmode = parent ? parent->scriptmode : SCRIPTMODE_GECKO;
    window->readystate = READYSTATE_UNINITIALIZED;

    hres = create_pending_window(window, ((void*)0));
    if(SUCCEEDED(hres))
        hres = update_window_doc(window->pending_window);
    if(FAILED(hres)) {
        IHTMLWindow2_Release(&window->base.IHTMLWindow2_iface);
        return hres;
    }

    hres = CoInternetCreateSecurityManager(((void*)0), &window->secmgr, 0);
    if(FAILED(hres)) {
        IHTMLWindow2_Release(&window->base.IHTMLWindow2_iface);
        return hres;
    }

    window->task_magic = get_task_target_magic();

    list_init(&window->children);
    list_add_head(&window_list, &window->entry);

    if(parent) {
        IHTMLWindow2_AddRef(&window->base.IHTMLWindow2_iface);

        window->parent = parent;
        list_add_tail(&parent->children, &window->sibling_entry);
    }

    TRACE("%p inner_window %p\n", window, window->base.inner_window);

    *ret = window;
    return S_OK;
}
