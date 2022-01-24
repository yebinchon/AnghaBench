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
struct TYPE_3__ {int /*<<< orphan*/  uqc_project_deltas; int /*<<< orphan*/  uqc_group_deltas; int /*<<< orphan*/  uqc_user_deltas; } ;
typedef  TYPE_1__ userquota_cache_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  longlong_t ;
typedef  int int64_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int DNODE_FLAG_USERUSED_ACCOUNTED ; 
 int DNODE_MIN_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void
FUNC3(objset_t *os, userquota_cache_t *cache, uint64_t used,
    uint64_t flags, uint64_t user, uint64_t group, uint64_t project,
    boolean_t subtract)
{
	if (flags & DNODE_FLAG_USERUSED_ACCOUNTED) {
		int64_t delta = DNODE_MIN_SIZE + used;
		char name[20];

		if (subtract)
			delta = -delta;

		(void) FUNC1(name, "%llx", (longlong_t)user);
		FUNC2(&cache->uqc_user_deltas, name, delta);

		(void) FUNC1(name, "%llx", (longlong_t)group);
		FUNC2(&cache->uqc_group_deltas, name, delta);

		if (FUNC0(os)) {
			(void) FUNC1(name, "%llx", (longlong_t)project);
			FUNC2(&cache->uqc_project_deltas,
			    name, delta);
		}
	}
}