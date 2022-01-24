#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t eventid_t ;
struct TYPE_9__ {TYPE_1__** event_table; } ;
typedef  TYPE_2__ event_target_t ;
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_11__ {int /*<<< orphan*/  attr_name; } ;
struct TYPE_10__ {int /*<<< orphan*/  dispex; } ;
struct TYPE_8__ {int /*<<< orphan*/ * handler_prop; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_3__ EventTarget ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 TYPE_7__* event_info ; 
 TYPE_2__* FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(EventTarget *event_target, eventid_t eid)
{
    event_target_t *data;
    VARIANT *store;
    HRESULT hres;

    hres = FUNC3(&event_target->dispex, event_info[eid].attr_name, FALSE, &store);
    if(FUNC1(hres))
        FUNC2(store);

    data = FUNC4(event_target, FALSE);
    if(data && data->event_table[eid] && data->event_table[eid]->handler_prop) {
        FUNC0(data->event_table[eid]->handler_prop);
        data->event_table[eid]->handler_prop = NULL;
    }
}