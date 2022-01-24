#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_2__ IInternetZoneManagerEx2_iface; } ;
typedef  TYPE_1__ ZoneMgrImpl ;
typedef  TYPE_2__* LPVOID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ZoneMgrImplVtbl ; 
 TYPE_1__* FUNC2 (int) ; 

HRESULT FUNC3(IUnknown *pUnkOuter, LPVOID *ppobj)
{
    ZoneMgrImpl* ret = FUNC2(sizeof(ZoneMgrImpl));

    FUNC0("(%p %p)\n", pUnkOuter, ppobj);
    ret->IInternetZoneManagerEx2_iface.lpVtbl = &ZoneMgrImplVtbl;
    ret->ref = 1;
    *ppobj = &ret->IInternetZoneManagerEx2_iface;

    FUNC1();

    return S_OK;
}