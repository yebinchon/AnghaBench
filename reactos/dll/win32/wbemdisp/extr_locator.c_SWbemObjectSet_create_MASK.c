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
struct TYPE_3__ {int /*<<< orphan*/ * lpVtbl; } ;
struct objectset {int refs; TYPE_1__ ISWbemObjectSet_iface; int /*<<< orphan*/ * objectenum; int /*<<< orphan*/  count; } ;
typedef  TYPE_1__ ISWbemObjectSet ;
typedef  int /*<<< orphan*/  IEnumWbemClassObject ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct objectset* FUNC3 (int) ; 
 int /*<<< orphan*/  objectset_vtbl ; 

__attribute__((used)) static HRESULT FUNC4( IEnumWbemClassObject *wbem_objectenum, ISWbemObjectSet **obj )
{
    struct objectset *objectset;

    FUNC1( "%p, %p\n", obj, wbem_objectenum );

    if (!(objectset = FUNC3( sizeof(*objectset) ))) return E_OUTOFMEMORY;
    objectset->ISWbemObjectSet_iface.lpVtbl = &objectset_vtbl;
    objectset->refs = 1;
    objectset->objectenum = wbem_objectenum;
    FUNC0( objectset->objectenum );
    objectset->count = FUNC2( objectset->objectenum );

    *obj = &objectset->ISWbemObjectSet_iface;
    FUNC1( "returning iface %p\n", *obj );
    return S_OK;
}