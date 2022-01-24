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
struct TYPE_5__ {int ref; TYPE_2__ IWICStream_iface; int /*<<< orphan*/ * pStream; } ;
typedef  TYPE_1__ IWICStreamImpl ;
typedef  TYPE_2__ IWICStream ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  WICStream_Vtbl ; 

HRESULT FUNC2(IWICStream **stream)
{
    IWICStreamImpl *pObject;

    if( !stream ) return E_INVALIDARG;

    pObject = FUNC1(FUNC0(), 0, sizeof(IWICStreamImpl));
    if( !pObject ) {
        *stream = NULL;
        return E_OUTOFMEMORY;
    }

    pObject->IWICStream_iface.lpVtbl = &WICStream_Vtbl;
    pObject->ref = 1;
    pObject->pStream = NULL;

    *stream = &pObject->IWICStream_iface;

    return S_OK;
}