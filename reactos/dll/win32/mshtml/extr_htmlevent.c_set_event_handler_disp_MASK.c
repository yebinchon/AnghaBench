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
struct TYPE_5__ {int /*<<< orphan*/ * handler_prop; } ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  EventTarget ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static HRESULT FUNC5(EventTarget *event_target, eventid_t eid, IDispatch *disp)
{
    event_target_t *data;

    FUNC4(event_target, eid);
    if(!disp)
        return S_OK;

    data = FUNC3(event_target, TRUE);
    if(!data)
        return E_OUTOFMEMORY;

    if(!FUNC1(data, eid, 0))
        return E_OUTOFMEMORY;

    data->event_table[eid]->handler_prop = disp;
    FUNC0(disp);

    FUNC2(event_target, eid);
    return S_OK;
}