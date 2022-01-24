#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIDOMEvent ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  int eventid_t ;
struct TYPE_10__ {size_t type; } ;
struct TYPE_9__ {int /*<<< orphan*/  IHTMLDOMNode_iface; TYPE_1__* doc; } ;
struct TYPE_8__ {TYPE_3__* target; int /*<<< orphan*/ * nsevent; TYPE_6__* type; } ;
struct TYPE_7__ {int /*<<< orphan*/  nsdoc; } ;
typedef  TYPE_2__ HTMLEventObj ;
typedef  TYPE_3__ HTMLDOMNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_6__* event_info ; 
 scalar_t__* event_types ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC7(HTMLEventObj *event, HTMLDOMNode *target, eventid_t eid, nsIDOMEvent *nsevent)
{
    event->type = event_info+eid;
    event->nsevent = nsevent;

    if(nsevent) {
        FUNC5(nsevent);
    }else if(event_types[event_info[eid].type]) {
        nsAString type_str;
        nsresult nsres;

        FUNC4(&type_str, event_types[event_info[eid].type]);
        nsres = FUNC6(target->doc->nsdoc, &type_str, &event->nsevent);
        FUNC3(&type_str);
        if(FUNC2(nsres)) {
            FUNC0("Could not create event: %08x\n", nsres);
            return E_FAIL;
        }
    }

    event->target = target;
    if(target)
        FUNC1(&target->IHTMLDOMNode_iface);
    return S_OK;
}