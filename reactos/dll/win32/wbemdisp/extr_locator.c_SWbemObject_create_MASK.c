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
struct object {int refs; TYPE_1__ ISWbemObject_iface; int /*<<< orphan*/  last_dispid_method; int /*<<< orphan*/  last_dispid; scalar_t__ nb_members; int /*<<< orphan*/ * members; int /*<<< orphan*/ * object; } ;
typedef  int /*<<< orphan*/  IWbemClassObject ;
typedef  TYPE_1__ ISWbemObject ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DISPID_BASE ; 
 int /*<<< orphan*/  DISPID_BASE_METHOD ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 struct object* FUNC2 (int) ; 
 int /*<<< orphan*/  object_vtbl ; 

__attribute__((used)) static HRESULT FUNC3( IWbemClassObject *wbem_object, ISWbemObject **obj )
{
    struct object *object;

    FUNC1( "%p, %p\n", obj, wbem_object );

    if (!(object = FUNC2( sizeof(*object) ))) return E_OUTOFMEMORY;
    object->ISWbemObject_iface.lpVtbl = &object_vtbl;
    object->refs = 1;
    object->object = wbem_object;
    FUNC0( object->object );
    object->members = NULL;
    object->nb_members = 0;
    object->last_dispid = DISPID_BASE;
    object->last_dispid_method = DISPID_BASE_METHOD;

    *obj = &object->ISWbemObject_iface;
    FUNC1( "returning iface %p\n", *obj );
    return S_OK;
}