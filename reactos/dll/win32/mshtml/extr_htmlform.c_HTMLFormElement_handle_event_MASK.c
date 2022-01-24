#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsIDOMEvent ;
struct TYPE_4__ {int /*<<< orphan*/  node; } ;
struct TYPE_5__ {TYPE_1__ element; int /*<<< orphan*/  IHTMLFormElement_iface; } ;
typedef  TYPE_2__ HTMLFormElement ;
typedef  int /*<<< orphan*/  HTMLDOMNode ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  EVENTID_SUBMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC3(HTMLDOMNode *iface, DWORD eid, nsIDOMEvent *event, BOOL *prevent_default)
{
    HTMLFormElement *This = FUNC2(iface);

    if(eid == EVENTID_SUBMIT) {
        *prevent_default = TRUE;
        return FUNC1(&This->IHTMLFormElement_iface);
    }

    return FUNC0(&This->element.node, eid, event, prevent_default);
}