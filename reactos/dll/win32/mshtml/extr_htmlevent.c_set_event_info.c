
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsIDOMEvent ;
typedef int nsAString ;
typedef int eventid_t ;
struct TYPE_10__ {size_t type; } ;
struct TYPE_9__ {int IHTMLDOMNode_iface; TYPE_1__* doc; } ;
struct TYPE_8__ {TYPE_3__* target; int * nsevent; TYPE_6__* type; } ;
struct TYPE_7__ {int nsdoc; } ;
typedef TYPE_2__ HTMLEventObj ;
typedef TYPE_3__ HTMLDOMNode ;
typedef int HRESULT ;


 int ERR (char*,int ) ;
 int E_FAIL ;
 int IHTMLDOMNode_AddRef (int *) ;
 scalar_t__ NS_FAILED (int ) ;
 int S_OK ;
 TYPE_6__* event_info ;
 scalar_t__* event_types ;
 int nsAString_Finish (int *) ;
 int nsAString_InitDepend (int *,scalar_t__) ;
 int nsIDOMEvent_AddRef (int *) ;
 int nsIDOMHTMLDocument_CreateEvent (int ,int *,int **) ;

__attribute__((used)) static HRESULT set_event_info(HTMLEventObj *event, HTMLDOMNode *target, eventid_t eid, nsIDOMEvent *nsevent)
{
    event->type = event_info+eid;
    event->nsevent = nsevent;

    if(nsevent) {
        nsIDOMEvent_AddRef(nsevent);
    }else if(event_types[event_info[eid].type]) {
        nsAString type_str;
        nsresult nsres;

        nsAString_InitDepend(&type_str, event_types[event_info[eid].type]);
        nsres = nsIDOMHTMLDocument_CreateEvent(target->doc->nsdoc, &type_str, &event->nsevent);
        nsAString_Finish(&type_str);
        if(NS_FAILED(nsres)) {
            ERR("Could not create event: %08x\n", nsres);
            return E_FAIL;
        }
    }

    event->target = target;
    if(target)
        IHTMLDOMNode_AddRef(&target->IHTMLDOMNode_iface);
    return S_OK;
}
