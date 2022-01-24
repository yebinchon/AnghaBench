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
struct TYPE_3__ {int /*<<< orphan*/ * propid_to_prop; int /*<<< orphan*/ * propid_to_name; int /*<<< orphan*/ * name_to_propid; } ;
typedef  TYPE_1__ PropertyStorage_impl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(PropertyStorage_impl *This)
{
    FUNC0(This->name_to_propid);
    This->name_to_propid = NULL;
    FUNC0(This->propid_to_name);
    This->propid_to_name = NULL;
    FUNC0(This->propid_to_prop);
    This->propid_to_prop = NULL;
}