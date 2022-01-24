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
struct TYPE_5__ {int refCount; TYPE_2__ ITfKeyEventSink_iface; } ;
typedef  TYPE_1__ KeyEventSink ;
typedef  TYPE_2__ ITfKeyEventSink ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  KeyEventSink_KeyEventSinkVtbl ; 
 int /*<<< orphan*/  S_OK ; 

__attribute__((used)) static HRESULT FUNC2(ITfKeyEventSink **ppOut)
{
    KeyEventSink *This;

    This = FUNC1(FUNC0(),HEAP_ZERO_MEMORY,sizeof(KeyEventSink));
    if (This == NULL)
        return E_OUTOFMEMORY;

    This->ITfKeyEventSink_iface.lpVtbl = &KeyEventSink_KeyEventSinkVtbl;
    This->refCount = 1;

    *ppOut = &This->ITfKeyEventSink_iface;
    return S_OK;
}