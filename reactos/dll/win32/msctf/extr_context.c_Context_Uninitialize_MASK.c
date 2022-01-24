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
struct TYPE_3__ {int /*<<< orphan*/ * manager; int /*<<< orphan*/  connected; int /*<<< orphan*/  ITextStoreACPSink_iface; scalar_t__ pITextStoreACP; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  ITfContext ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ Context ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 

HRESULT FUNC2(ITfContext *iface)
{
    Context *This = FUNC1(iface);

    if (This->pITextStoreACP)
        FUNC0(This->pITextStoreACP, (IUnknown*)&This->ITextStoreACPSink_iface);
    This->connected = FALSE;
    This->manager = NULL;
    return S_OK;
}