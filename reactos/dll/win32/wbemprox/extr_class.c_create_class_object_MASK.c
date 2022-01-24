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
struct record {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * lpVtbl; } ;
struct class_object {int refs; TYPE_1__ IWbemClassObject_iface; struct record* record; scalar_t__ index_property; scalar_t__ index_method; int /*<<< orphan*/  index; int /*<<< orphan*/ * iter; int /*<<< orphan*/ * name; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
typedef  TYPE_1__ IWbemClassObject ;
typedef  int /*<<< orphan*/  IEnumWbemClassObject ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,...) ; 
 int /*<<< orphan*/  class_object_vtbl ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 struct class_object* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct class_object*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*) ; 

HRESULT FUNC6( const WCHAR *name, IEnumWbemClassObject *iter, UINT index,
                             struct record *record, IWbemClassObject **obj )
{
    struct class_object *co;

    FUNC1("%s, %p\n", FUNC2(name), obj);

    co = FUNC3( sizeof(*co) );
    if (!co) return E_OUTOFMEMORY;

    co->IWbemClassObject_iface.lpVtbl = &class_object_vtbl;
    co->refs  = 1;
    if (!name) co->name = NULL;
    else if (!(co->name = FUNC5( name )))
    {
        FUNC4( co );
        return E_OUTOFMEMORY;
    }
    co->iter           = iter;
    co->index          = index;
    co->index_method   = 0;
    co->index_property = 0;
    co->record         = record;
    if (iter) FUNC0( iter );

    *obj = &co->IWbemClassObject_iface;

    FUNC1("returning iface %p\n", *obj);
    return S_OK;
}