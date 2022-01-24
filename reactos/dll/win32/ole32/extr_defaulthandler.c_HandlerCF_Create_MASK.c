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
struct TYPE_5__ {TYPE_2__ IClassFactory_iface; int /*<<< orphan*/  clsid; scalar_t__ refs; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/ * REFCLSID ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  TYPE_1__ HandlerCF ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HandlerClassFactoryVtbl ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

HRESULT FUNC5(REFCLSID rclsid, REFIID riid, LPVOID *ppv)
{
    HRESULT hr;
    HandlerCF *This = FUNC2(FUNC1(), 0, sizeof(*This));
    if (!This) return E_OUTOFMEMORY;
    This->IClassFactory_iface.lpVtbl = &HandlerClassFactoryVtbl;
    This->refs = 0;
    This->clsid = *rclsid;

    hr = FUNC4(&This->IClassFactory_iface, riid, ppv);
    if (FUNC0(hr))
        FUNC3(FUNC1(), 0, This);

    return hr;
}