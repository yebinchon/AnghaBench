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
struct TYPE_5__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IClassFactory_iface; int /*<<< orphan*/  ctor; } ;
typedef  TYPE_1__* LPVOID ;
typedef  int /*<<< orphan*/  LPFNCONSTRUCTOR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ ClassFactory ;

/* Variables and functions */
 int /*<<< orphan*/  ClassFactoryVtbl ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TS_refCount ; 

__attribute__((used)) static HRESULT FUNC2(LPFNCONSTRUCTOR ctor, LPVOID *ppvOut)
{
    ClassFactory *This = FUNC1(FUNC0(),0,sizeof(ClassFactory));
    This->IClassFactory_iface.lpVtbl = &ClassFactoryVtbl;
    This->ref = 1;
    This->ctor = ctor;
    *ppvOut = &This->IClassFactory_iface;
    TS_refCount++;
    return S_OK;
}