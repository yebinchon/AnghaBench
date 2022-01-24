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
typedef  int /*<<< orphan*/  classinfo ;
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IClassFactory_iface; int /*<<< orphan*/  const* info; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ ClassFactoryImpl ;

/* Variables and functions */
 int /*<<< orphan*/  ClassFactoryImpl_Vtbl ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static HRESULT FUNC4(const classinfo *info, REFIID riid, LPVOID *ppv)
{
    ClassFactoryImpl *This;
    HRESULT ret;

    *ppv = NULL;

    This = FUNC1(FUNC0(), 0, sizeof(ClassFactoryImpl));
    if (!This) return E_OUTOFMEMORY;

    This->IClassFactory_iface.lpVtbl = &ClassFactoryImpl_Vtbl;
    This->ref = 1;
    This->info = info;

    ret = FUNC2(&This->IClassFactory_iface, riid, ppv);
    FUNC3(&This->IClassFactory_iface);

    return ret;
}