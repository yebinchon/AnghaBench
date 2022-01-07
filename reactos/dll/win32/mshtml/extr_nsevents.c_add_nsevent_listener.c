
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsIDOMNode ;
typedef int nsIDOMEventTarget ;
struct TYPE_10__ {TYPE_3__* window; } ;
struct TYPE_11__ {TYPE_2__* nsevent_listener; TYPE_4__ basedoc; } ;
struct TYPE_9__ {int nswindow; } ;
struct TYPE_7__ {int nsIDOMEventListener_iface; } ;
struct TYPE_8__ {TYPE_1__ htmlevent_listener; } ;
typedef int LPCWSTR ;
typedef TYPE_5__ HTMLDocumentNode ;


 int ERR (char*,int ) ;
 int IID_nsIDOMEventTarget ;
 scalar_t__ NS_FAILED (int ) ;
 int TRUE ;
 int init_event (int *,int ,int *,int ) ;
 int nsIDOMEventTarget_Release (int *) ;
 int nsIDOMNode_QueryInterface (int *,int *,void**) ;
 int nsIDOMWindow_QueryInterface (int ,int *,void**) ;

void add_nsevent_listener(HTMLDocumentNode *doc, nsIDOMNode *nsnode, LPCWSTR type)
{
    nsIDOMEventTarget *target;
    nsresult nsres;

    if(nsnode)
        nsres = nsIDOMNode_QueryInterface(nsnode, &IID_nsIDOMEventTarget, (void**)&target);
    else
        nsres = nsIDOMWindow_QueryInterface(doc->basedoc.window->nswindow, &IID_nsIDOMEventTarget, (void**)&target);
    if(NS_FAILED(nsres)) {
        ERR("Could not get nsIDOMEventTarget interface: %08x\n", nsres);
        return;
    }

    init_event(target, type, &doc->nsevent_listener->htmlevent_listener.nsIDOMEventListener_iface,
            TRUE);
    nsIDOMEventTarget_Release(target);
}
