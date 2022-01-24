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
typedef  size_t eventid_t ;
struct TYPE_5__ {TYPE_1__** event_table; } ;
typedef  TYPE_2__ event_target_t ;
struct TYPE_4__ {size_t handler_cnt; int /*<<< orphan*/ ** handlers; } ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  EventTarget ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 size_t EVENTID_LAST ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

HRESULT FUNC4(EventTarget *event_target, BSTR name, IDispatch *disp)
{
    event_target_t *data;
    eventid_t eid;
    DWORD i = 0;

    eid = FUNC2(name);
    if(eid == EVENTID_LAST) {
        FUNC1("Unknown event\n");
        return S_OK;
    }

    data = FUNC3(event_target, FALSE);
    if(!data)
        return S_OK;

    if(!data->event_table[eid])
        return S_OK;

    while(i < data->event_table[eid]->handler_cnt) {
        if(data->event_table[eid]->handlers[i] == disp) {
            FUNC0(data->event_table[eid]->handlers[i]);
            data->event_table[eid]->handlers[i] = NULL;
        }
        i++;
    }

    return S_OK;
}