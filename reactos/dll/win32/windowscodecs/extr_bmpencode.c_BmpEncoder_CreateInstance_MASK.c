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
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IWICBitmapEncoder_iface; int /*<<< orphan*/ * frame; int /*<<< orphan*/ * stream; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ BmpEncoder ;

/* Variables and functions */
 int /*<<< orphan*/  BmpEncoder_Vtbl ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

HRESULT FUNC6(REFIID iid, void** ppv)
{
    BmpEncoder *This;
    HRESULT ret;

    FUNC4("(%s,%p)\n", FUNC5(iid), ppv);

    *ppv = NULL;

    This = FUNC1(FUNC0(), 0, sizeof(BmpEncoder));
    if (!This) return E_OUTOFMEMORY;

    This->IWICBitmapEncoder_iface.lpVtbl = &BmpEncoder_Vtbl;
    This->ref = 1;
    This->stream = NULL;
    This->frame = NULL;

    ret = FUNC2(&This->IWICBitmapEncoder_iface, iid, ppv);
    FUNC3(&This->IWICBitmapEncoder_iface);

    return ret;
}