#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ eventid_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HTMLDocumentNode ;
typedef  int /*<<< orphan*/  EventTarget ;

/* Variables and functions */
 scalar_t__ EVENTID_LAST ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 

void FUNC5(HTMLDocumentNode *doc, EventTarget *event_target, const WCHAR *event, IDispatch *disp)
{
    eventid_t eid;

    FUNC0("(%p %p %s %p)\n", doc, event_target, FUNC3(event), disp);

    eid = FUNC2(event);
    if(eid == EVENTID_LAST) {
        FUNC1("Unsupported event %s\n", FUNC3(event));
        return;
    }

    FUNC4(event_target, eid, disp);
}