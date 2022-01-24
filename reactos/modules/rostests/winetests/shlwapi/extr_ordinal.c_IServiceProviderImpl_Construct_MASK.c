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
struct TYPE_5__ {int ref; TYPE_2__ IServiceProvider_iface; } ;
typedef  TYPE_1__ IServiceProviderImpl ;
typedef  TYPE_2__ IServiceProvider ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IServiceProviderImpl_Vtbl ; 

__attribute__((used)) static IServiceProvider* FUNC2(void)
{
    IServiceProviderImpl *obj;

    obj = FUNC1(FUNC0(), 0, sizeof(*obj));
    obj->IServiceProvider_iface.lpVtbl = &IServiceProviderImpl_Vtbl;
    obj->ref = 1;

    return &obj->IServiceProvider_iface;
}