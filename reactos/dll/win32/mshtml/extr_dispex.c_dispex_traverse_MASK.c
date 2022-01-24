#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsISupports ;
typedef  int /*<<< orphan*/  nsCycleCollectionTraversalCallback ;
struct TYPE_6__ {int /*<<< orphan*/  var; } ;
typedef  TYPE_2__ dynamic_prop_t ;
struct TYPE_7__ {TYPE_1__* dynamic_data; } ;
struct TYPE_5__ {int prop_cnt; TYPE_2__* props; } ;
typedef  TYPE_3__ DispatchEx ;

/* Variables and functions */
 scalar_t__ VT_DISPATCH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 

void FUNC3(DispatchEx *This, nsCycleCollectionTraversalCallback *cb)
{
    dynamic_prop_t *prop;

    if(!This->dynamic_data)
        return;

    for(prop = This->dynamic_data->props; prop < This->dynamic_data->props + This->dynamic_data->prop_cnt; prop++) {
        if(FUNC1(&prop->var) == VT_DISPATCH)
            FUNC2((nsISupports*)FUNC0(&prop->var), "dispex_data", cb);
    }

    /* FIXME: Traverse func_disps */
}