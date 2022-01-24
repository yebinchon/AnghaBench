#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t eventid_t ;
struct TYPE_6__ {TYPE_1__** event_table; } ;
typedef  TYPE_2__ event_target_t ;
typedef  int /*<<< orphan*/  VARIANT_BOOL ;
struct TYPE_5__ {size_t handler_cnt; int /*<<< orphan*/ ** handlers; } ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  EventTarget ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 size_t EVENTID_LAST ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VARIANT_TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,size_t,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

HRESULT FUNC6(EventTarget *event_target, BSTR name, IDispatch *disp, VARIANT_BOOL *res)
{
    event_target_t *data;
    eventid_t eid;
    DWORD i = 0;

    eid = FUNC3(name);
    if(eid == EVENTID_LAST) {
        FUNC1("Unknown event\n");
        *res = VARIANT_TRUE;
        return S_OK;
    }

    data = FUNC5(event_target, TRUE);
    if(!data)
        return E_OUTOFMEMORY;

    if(data->event_table[eid]) {
        while(i < data->event_table[eid]->handler_cnt && data->event_table[eid]->handlers[i])
            i++;
        if(i == data->event_table[eid]->handler_cnt && !FUNC2(data, eid, i+1))
            return E_OUTOFMEMORY;
    }else if(!FUNC2(data, eid, i+1)) {
        return E_OUTOFMEMORY;
    }

    FUNC0(disp);
    data->event_table[eid]->handlers[i] = disp;

    FUNC4(event_target, eid);

    *res = VARIANT_TRUE;
    return S_OK;
}