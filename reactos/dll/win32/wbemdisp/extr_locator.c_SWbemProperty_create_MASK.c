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
struct property {int refs; TYPE_1__ ISWbemProperty_iface; int /*<<< orphan*/  name; int /*<<< orphan*/ * object; } ;
typedef  int /*<<< orphan*/  IWbemClassObject ;
typedef  TYPE_1__ ISWbemProperty ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 struct property* FUNC4 (int) ; 
 int /*<<< orphan*/  property_vtbl ; 

__attribute__((used)) static HRESULT FUNC5( IWbemClassObject *wbem_object, BSTR name, ISWbemProperty **obj )
{
    struct property *property;

    FUNC3( "%p, %p\n", obj, wbem_object );

    if (!(property = FUNC4( sizeof(*property) ))) return E_OUTOFMEMORY;
    property->ISWbemProperty_iface.lpVtbl = &property_vtbl;
    property->refs = 1;
    property->object = wbem_object;
    FUNC0( property->object );
    property->name = FUNC1( name, FUNC2( name ) );
    *obj = &property->ISWbemProperty_iface;
    FUNC3( "returning iface %p\n", *obj );
    return S_OK;
}