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
typedef  int /*<<< orphan*/  eventid_t ;
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_5__ {TYPE_1__* inner_window; } ;
struct TYPE_4__ {int /*<<< orphan*/  event_target; int /*<<< orphan*/  doc; } ;
typedef  TYPE_2__ HTMLWindow ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline HRESULT FUNC2(HTMLWindow *window, eventid_t eid, VARIANT *var)
{
    if(!window->inner_window->doc) {
        FUNC0("No document\n");
        return E_FAIL;
    }

    return FUNC1(&window->inner_window->event_target, eid, var);
}