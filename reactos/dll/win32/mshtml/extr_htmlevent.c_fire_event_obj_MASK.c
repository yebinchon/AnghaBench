#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_15__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIDOMNode ;
typedef  int /*<<< orphan*/  nsIDOMHTMLElement ;
typedef  size_t eventid_t ;
typedef  int UINT16 ;
struct TYPE_25__ {int /*<<< orphan*/  IHTMLDocument2_iface; int /*<<< orphan*/  cp_container; } ;
struct TYPE_24__ {TYPE_2__* vtbl; int /*<<< orphan*/  IHTMLDOMNode_iface; int /*<<< orphan*/ * cp_container; int /*<<< orphan*/  event_target; } ;
struct TYPE_19__ {int /*<<< orphan*/  event_target; } ;
struct TYPE_23__ {TYPE_9__ basedoc; TYPE_1__ node; int /*<<< orphan*/  nsdoc; TYPE_3__* window; } ;
struct TYPE_22__ {int /*<<< orphan*/ * nsevent; scalar_t__ cancel_bubble; scalar_t__ prevent_default; int /*<<< orphan*/  IHTMLEventObj_iface; } ;
struct TYPE_21__ {int /*<<< orphan*/ * event; } ;
struct TYPE_20__ {int /*<<< orphan*/  (* handle_event ) (TYPE_6__*,size_t,int /*<<< orphan*/ *,scalar_t__*) ;} ;
struct TYPE_18__ {int flags; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  IHTMLEventObj ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  TYPE_3__ HTMLInnerWindow ;
typedef  TYPE_4__ HTMLEventObj ;
typedef  TYPE_5__ HTMLDocumentNode ;
typedef  TYPE_6__ HTMLDOMNode ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
#define  DOCUMENT_NODE 129 
#define  ELEMENT_NODE 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EVENT_BUBBLE ; 
 int EVENT_FORWARDBODY ; 
 int EVENT_HASDEFAULTHANDLERS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_15__* event_info ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ *,scalar_t__,TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_6__*,size_t,int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static void FUNC22(HTMLDocumentNode *doc, eventid_t eid, HTMLEventObj *event_obj,
        nsIDOMNode *target, IDispatch *script_this)
{
    IHTMLEventObj *prev_event;
    nsIDOMNode *parent, *nsnode;
    BOOL prevent_default = FALSE;
    HTMLInnerWindow *window;
    HTMLDOMNode *node;
    UINT16 node_type;
    nsresult nsres;
    HRESULT hres;

    FUNC6("(%p) %s\n", doc, FUNC9(event_info[eid].name));

    window = doc->window;
    if(!window) {
        FUNC7("NULL window\n");
        return;
    }

    FUNC11(&doc->basedoc);

    prev_event = window->event;
    window->event = event_obj ? &event_obj->IHTMLEventObj_iface : NULL;

    FUNC18(target, &node_type);
    nsnode = target;
    FUNC17(nsnode);

    switch(node_type) {
    case ELEMENT_NODE:
        do {
            hres = FUNC10(doc, nsnode, FALSE, &node);
            if(FUNC5(hres) && node) {
                FUNC8(doc, event_obj, &node->event_target, node->cp_container, eid,
                        script_this ? script_this : (IDispatch*)&node->IHTMLDOMNode_iface);
                FUNC13(node);
            }

            if(!(event_info[eid].flags & EVENT_BUBBLE) || (event_obj && event_obj->cancel_bubble))
                break;

            FUNC19(nsnode, &parent);
            FUNC20(nsnode);
            nsnode = parent;
            if(!nsnode)
                break;

            FUNC18(nsnode, &node_type);
        }while(node_type == ELEMENT_NODE);

        if(!(event_info[eid].flags & EVENT_BUBBLE) || (event_obj && event_obj->cancel_bubble))
            break;

    case DOCUMENT_NODE:
        if(event_info[eid].flags & EVENT_FORWARDBODY) {
            nsIDOMHTMLElement *nsbody;
            nsresult nsres;

            nsres = FUNC15(doc->nsdoc, &nsbody);
            if(FUNC4(nsres) && nsbody) {
                hres = FUNC10(doc, (nsIDOMNode*)nsbody, FALSE, &node);
                if(FUNC5(hres) && node) {
                    FUNC8(doc, event_obj, &node->event_target, node->cp_container, eid,
                            script_this ? script_this : (IDispatch*)&node->IHTMLDOMNode_iface);
                    FUNC13(node);
                }
                FUNC16(nsbody);
            }else {
                FUNC0("Could not get body: %08x\n", nsres);
            }
        }

        FUNC8(doc, event_obj, &doc->node.event_target, &doc->basedoc.cp_container, eid,
                script_this ? script_this : (IDispatch*)&doc->basedoc.IHTMLDocument2_iface);
        break;

    default:
        FUNC2("unimplemented node type %d\n", node_type);
    }

    if(nsnode)
        FUNC20(nsnode);

    if(event_obj && event_obj->prevent_default)
        prevent_default = TRUE;
    window->event = prev_event;

    if(!prevent_default && (event_info[eid].flags & EVENT_HASDEFAULTHANDLERS)) {
        FUNC17(target);
        nsnode = target;

        do {
            hres = FUNC10(doc, nsnode, TRUE, &node);
            if(FUNC1(hres))
                break;

            if(node) {
                if(node->vtbl->handle_event)
                    hres = node->vtbl->handle_event(node, eid, event_obj ? event_obj->nsevent : NULL, &prevent_default);
                FUNC13(node);
                if(FUNC1(hres) || prevent_default || (event_obj && event_obj->cancel_bubble))
                    break;
            }

            nsres = FUNC19(nsnode, &parent);
            if(FUNC3(nsres))
                break;

            FUNC20(nsnode);
            nsnode = parent;
        } while(nsnode);

        if(nsnode)
            FUNC20(nsnode);
    }

    if(prevent_default && event_obj && event_obj->nsevent) {
        FUNC6("calling PreventDefault\n");
        FUNC14(event_obj->nsevent);
    }

    FUNC12(&doc->basedoc);
}