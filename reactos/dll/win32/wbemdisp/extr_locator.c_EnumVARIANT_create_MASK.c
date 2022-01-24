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
struct enumvar {int refs; TYPE_1__ IEnumVARIANT_iface; int /*<<< orphan*/ * objectenum; } ;
typedef  int /*<<< orphan*/  IEnumWbemClassObject ;
typedef  TYPE_1__ IEnumVARIANT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  enumvar_vtbl ; 
 struct enumvar* FUNC2 (int) ; 

__attribute__((used)) static HRESULT FUNC3( IEnumWbemClassObject *objectenum, IEnumVARIANT **obj )
{
    struct enumvar *enumvar;

    if (!(enumvar = FUNC2( sizeof(*enumvar) ))) return E_OUTOFMEMORY;
    enumvar->IEnumVARIANT_iface.lpVtbl = &enumvar_vtbl;
    enumvar->refs = 1;
    enumvar->objectenum = objectenum;
    FUNC0( enumvar->objectenum );

    *obj = &enumvar->IEnumVARIANT_iface;
    FUNC1( "returning iface %p\n", *obj );
    return S_OK;
}