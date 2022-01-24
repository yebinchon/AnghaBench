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
typedef  int /*<<< orphan*/  zfs_space_check_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_4__ {int /*<<< orphan*/  dp_spa; } ;
typedef  TYPE_1__ dsl_pool_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

uint64_t
FUNC3(dsl_pool_t *dp, zfs_space_check_t slop_policy)
{
	uint64_t poolsize = FUNC0(dp, slop_policy);
	uint64_t deferred =
	    FUNC1(FUNC2(dp->dp_spa));
	uint64_t quota = (poolsize >= deferred) ? (poolsize - deferred) : 0;
	return (quota);
}