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
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  obj ;
struct TYPE_6__ {int /*<<< orphan*/  dp_root_dir; int /*<<< orphan*/  dp_meta_objset; } ;
typedef  TYPE_1__ dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dir_t ;
struct TYPE_7__ {int /*<<< orphan*/  dd_child_dir_zapobj; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char const*,TYPE_1__*,int /*<<< orphan*/ **) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int,int /*<<< orphan*/ *) ; 

int
FUNC3(dsl_pool_t *dp, const char *name, dsl_dir_t **ddp)
{
	uint64_t obj;
	int err;

	err = FUNC2(dp->dp_meta_objset,
	    FUNC1(dp->dp_root_dir)->dd_child_dir_zapobj,
	    name, sizeof (obj), 1, &obj);
	if (err)
		return (err);

	return (FUNC0(dp, obj, name, dp, ddp));
}