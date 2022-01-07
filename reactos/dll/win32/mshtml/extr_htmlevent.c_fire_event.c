
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int nsIDOMNode ;
typedef int nsIDOMEvent ;
typedef int eventid_t ;
struct TYPE_5__ {int IHTMLEventObj_iface; } ;
typedef int IDispatch ;
typedef TYPE_1__ HTMLEventObj ;
typedef int HTMLDocumentNode ;
typedef int HTMLDOMNode ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 scalar_t__ FAILED (int ) ;
 int IHTMLEventObj_Release (int *) ;
 int TRUE ;
 TYPE_1__* create_event () ;
 int fire_event_obj (int *,int ,TYPE_1__*,int *,int *) ;
 int get_node (int *,int *,int ,int **) ;
 int node_release (int *) ;
 int set_event_info (TYPE_1__*,int *,int ,int *) ;

void fire_event(HTMLDocumentNode *doc, eventid_t eid, BOOL set_event, nsIDOMNode *target, nsIDOMEvent *nsevent,
        IDispatch *script_this)
{
    HTMLEventObj *event_obj = ((void*)0);
    HTMLDOMNode *node;
    HRESULT hres;

    if(set_event) {
        hres = get_node(doc, target, TRUE, &node);
        if(FAILED(hres))
            return;

        event_obj = create_event();
        node_release(node);
        if(!event_obj)
            return;

        hres = set_event_info(event_obj, node, eid, nsevent);
        if(FAILED(hres)) {
            IHTMLEventObj_Release(&event_obj->IHTMLEventObj_iface);
            return;
        }
    }

    fire_event_obj(doc, eid, event_obj, target, script_this);

    if(event_obj)
        IHTMLEventObj_Release(&event_obj->IHTMLEventObj_iface);
}
