#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsIDOMNode ;
typedef  size_t eventid_t ;
struct TYPE_8__ {int flags; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {int /*<<< orphan*/ * nsnode; } ;
struct TYPE_7__ {scalar_t__* event_vector; TYPE_1__ node; int /*<<< orphan*/  nsdoc; } ;
typedef  TYPE_2__ HTMLDocumentNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int EVENT_BIND_TO_BODY ; 
 int EVENT_DEFAULTLISTENER ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* event_info ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

HRESULT FUNC5(HTMLDocumentNode *doc, eventid_t eid)
{
    nsIDOMNode *nsnode = NULL;

    FUNC0("%s\n", FUNC2(event_info[eid].name));

    if(!doc->nsdoc || doc->event_vector[eid] || !(event_info[eid].flags & (EVENT_DEFAULTLISTENER|EVENT_BIND_TO_BODY)))
        return S_OK;

    if(event_info[eid].flags & EVENT_BIND_TO_BODY) {
        nsnode = doc->node.nsnode;
        FUNC3(nsnode);
    }

    doc->event_vector[eid] = TRUE;
    FUNC1(doc, nsnode, event_info[eid].name);

    if(nsnode)
        FUNC4(nsnode);
    return S_OK;
}