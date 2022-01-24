#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  IHTMLEventObj_iface; } ;
typedef  int /*<<< orphan*/  IHTMLEventObj ;
typedef  TYPE_1__ HTMLEventObj ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_1__* FUNC0 () ; 

HRESULT FUNC1(IHTMLEventObj **ret)
{
    HTMLEventObj *event;

    event = FUNC0();
    if(!event)
        return E_OUTOFMEMORY;

    *ret = &event->IHTMLEventObj_iface;
    return S_OK;
}