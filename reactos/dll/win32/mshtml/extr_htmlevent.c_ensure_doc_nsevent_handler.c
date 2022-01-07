
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int nsIDOMNode ;
typedef size_t eventid_t ;
struct TYPE_8__ {int flags; int name; } ;
struct TYPE_6__ {int * nsnode; } ;
struct TYPE_7__ {scalar_t__* event_vector; TYPE_1__ node; int nsdoc; } ;
typedef TYPE_2__ HTMLDocumentNode ;
typedef int HRESULT ;


 int EVENT_BIND_TO_BODY ;
 int EVENT_DEFAULTLISTENER ;
 int S_OK ;
 int TRACE (char*,int ) ;
 scalar_t__ TRUE ;
 int add_nsevent_listener (TYPE_2__*,int *,int ) ;
 int debugstr_w (int ) ;
 TYPE_3__* event_info ;
 int nsIDOMNode_AddRef (int *) ;
 int nsIDOMNode_Release (int *) ;

HRESULT ensure_doc_nsevent_handler(HTMLDocumentNode *doc, eventid_t eid)
{
    nsIDOMNode *nsnode = ((void*)0);

    TRACE("%s\n", debugstr_w(event_info[eid].name));

    if(!doc->nsdoc || doc->event_vector[eid] || !(event_info[eid].flags & (EVENT_DEFAULTLISTENER|EVENT_BIND_TO_BODY)))
        return S_OK;

    if(event_info[eid].flags & EVENT_BIND_TO_BODY) {
        nsnode = doc->node.nsnode;
        nsIDOMNode_AddRef(nsnode);
    }

    doc->event_vector[eid] = TRUE;
    add_nsevent_listener(doc, nsnode, event_info[eid].name);

    if(nsnode)
        nsIDOMNode_Release(nsnode);
    return S_OK;
}
