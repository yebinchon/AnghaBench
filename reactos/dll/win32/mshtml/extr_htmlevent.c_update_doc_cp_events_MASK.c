#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cp_static_data_t ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  dispid; } ;
typedef  int /*<<< orphan*/  HTMLDocumentNode ;

/* Variables and functions */
 int EVENTID_LAST ; 
 int EVENT_DEFAULTLISTENER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* event_info ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(HTMLDocumentNode *doc, cp_static_data_t *cp)
{
    int i;

    for(i=0; i < EVENTID_LAST; i++) {
        if((event_info[i].flags & EVENT_DEFAULTLISTENER) && FUNC1(cp, event_info[i].dispid))
            FUNC0(doc, i);
    }
}