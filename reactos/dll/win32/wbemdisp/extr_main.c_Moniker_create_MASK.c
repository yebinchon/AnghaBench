#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * lpVtbl; } ;
struct moniker {int refs; TYPE_1__ IMoniker_iface; int /*<<< orphan*/ * obj; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_1__ IMoniker ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,...) ; 
 struct moniker* FUNC2 (int) ; 
 int /*<<< orphan*/  moniker_vtbl ; 

__attribute__((used)) static HRESULT FUNC3( IUnknown *unk, IMoniker **obj )
{
    struct moniker *moniker;

    FUNC1( "%p, %p\n", unk, obj );

    if (!(moniker = FUNC2( sizeof(*moniker) ))) return E_OUTOFMEMORY;
    moniker->IMoniker_iface.lpVtbl = &moniker_vtbl;
    moniker->refs = 1;
    moniker->obj = unk;
    FUNC0( moniker->obj );

    *obj = &moniker->IMoniker_iface;
    FUNC1( "returning iface %p\n", *obj );
    return S_OK;
}