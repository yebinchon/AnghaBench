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
struct TYPE_5__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IHTMLLocation_iface; int /*<<< orphan*/  dispex; int /*<<< orphan*/ * window; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_2__ HTMLLocation ;
typedef  int /*<<< orphan*/  HTMLInnerWindow ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  HTMLLocationVtbl ; 
 int /*<<< orphan*/  HTMLLocation_dispex ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

HRESULT FUNC2(HTMLInnerWindow *window, HTMLLocation **ret)
{
    HTMLLocation *location;

    location = FUNC0(sizeof(*location));
    if(!location)
        return E_OUTOFMEMORY;

    location->IHTMLLocation_iface.lpVtbl = &HTMLLocationVtbl;
    location->ref = 1;
    location->window = window;

    FUNC1(&location->dispex, (IUnknown*)&location->IHTMLLocation_iface, &HTMLLocation_dispex);

    *ret = location;
    return S_OK;
}