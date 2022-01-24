#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsIDOMNode ;
typedef  int /*<<< orphan*/  nsIDOMEvent ;
typedef  int /*<<< orphan*/  eventid_t ;
struct TYPE_5__ {int /*<<< orphan*/  IHTMLEventObj_iface; } ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  TYPE_1__ HTMLEventObj ;
typedef  int /*<<< orphan*/  HTMLDocumentNode ;
typedef  int /*<<< orphan*/  HTMLDOMNode ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(HTMLDocumentNode *doc, eventid_t eid, BOOL set_event, nsIDOMNode *target, nsIDOMEvent *nsevent,
        IDispatch *script_this)
{
    HTMLEventObj *event_obj = NULL;
    HTMLDOMNode *node;
    HRESULT hres;

    if(set_event) {
        hres = FUNC4(doc, target, TRUE, &node);
        if(FUNC0(hres))
            return;

        event_obj = FUNC2();
        FUNC5(node);
        if(!event_obj)
            return;

        hres = FUNC6(event_obj, node, eid, nsevent);
        if(FUNC0(hres)) {
            FUNC1(&event_obj->IHTMLEventObj_iface);
            return;
        }
    }

    FUNC3(doc, eid, event_obj, target, script_this);

    if(event_obj)
        FUNC1(&event_obj->IHTMLEventObj_iface);
}