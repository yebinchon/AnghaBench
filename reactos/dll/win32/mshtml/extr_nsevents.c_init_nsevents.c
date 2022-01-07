
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsIDOMEventTarget ;
struct TYPE_15__ {int nsIDOMEventListener_iface; } ;
struct TYPE_13__ {int ref; TYPE_6__ load_listener; TYPE_6__ keypress_listener; TYPE_6__ focus_listener; TYPE_6__ blur_listener; TYPE_6__ htmlevent_listener; TYPE_4__* doc; } ;
typedef TYPE_3__ nsDocumentEventListener ;
struct TYPE_12__ {TYPE_1__* window; } ;
struct TYPE_14__ {TYPE_2__ basedoc; TYPE_3__* nsevent_listener; } ;
struct TYPE_11__ {int nswindow; } ;
typedef TYPE_4__ HTMLDocumentNode ;


 int ERR (char*,int ) ;
 int FALSE ;
 int IID_nsIDOMEventTarget ;
 scalar_t__ NS_FAILED (int ) ;
 int TRACE (char*,TYPE_4__*,TYPE_3__*) ;
 int TRUE ;
 int blurW ;
 int blur_vtbl ;
 int focusW ;
 int focus_vtbl ;
 TYPE_3__* heap_alloc (int) ;
 int htmlevent_vtbl ;
 int init_event (int *,int ,int *,int ) ;
 int init_listener (TYPE_6__*,TYPE_3__*,int *) ;
 int keypressW ;
 int keypress_vtbl ;
 int loadW ;
 int load_vtbl ;
 int nsIDOMEventTarget_Release (int *) ;
 int nsIDOMWindow_QueryInterface (int ,int *,void**) ;

void init_nsevents(HTMLDocumentNode *doc)
{
    nsDocumentEventListener *listener;
    nsIDOMEventTarget *target;
    nsresult nsres;

    listener = heap_alloc(sizeof(nsDocumentEventListener));
    if(!listener)
        return;

    TRACE("%p %p\n", doc, listener);

    listener->ref = 1;
    listener->doc = doc;

    init_listener(&listener->blur_listener, listener, &blur_vtbl);
    init_listener(&listener->focus_listener, listener, &focus_vtbl);
    init_listener(&listener->keypress_listener, listener, &keypress_vtbl);
    init_listener(&listener->load_listener, listener, &load_vtbl);
    init_listener(&listener->htmlevent_listener, listener, &htmlevent_vtbl);

    doc->nsevent_listener = listener;

    nsres = nsIDOMWindow_QueryInterface(doc->basedoc.window->nswindow, &IID_nsIDOMEventTarget, (void**)&target);
    if(NS_FAILED(nsres)) {
        ERR("Could not get nsIDOMEventTarget interface: %08x\n", nsres);
        return;
    }

    init_event(target, blurW, &listener->blur_listener.nsIDOMEventListener_iface, TRUE);
    init_event(target, focusW, &listener->focus_listener.nsIDOMEventListener_iface, TRUE);
    init_event(target, keypressW, &listener->keypress_listener.nsIDOMEventListener_iface, FALSE);
    init_event(target, loadW, &listener->load_listener.nsIDOMEventListener_iface, TRUE);

    nsIDOMEventTarget_Release(target);
}
