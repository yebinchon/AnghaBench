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
struct TYPE_5__ {int ref; TYPE_2__ IOmNavigator_iface; int /*<<< orphan*/  dispex; } ;
typedef  TYPE_1__ OmNavigator ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_2__ IOmNavigator ;

/* Variables and functions */
 int /*<<< orphan*/  OmNavigatorVtbl ; 
 int /*<<< orphan*/  OmNavigator_dispex ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

IOmNavigator *FUNC2(void)
{
    OmNavigator *ret;

    ret = FUNC0(sizeof(*ret));
    if(!ret)
        return NULL;

    ret->IOmNavigator_iface.lpVtbl = &OmNavigatorVtbl;
    ret->ref = 1;

    FUNC1(&ret->dispex, (IUnknown*)&ret->IOmNavigator_iface, &OmNavigator_dispex);

    return &ret->IOmNavigator_iface;
}