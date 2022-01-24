#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  spa_name; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  avl_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spa_namespace_avl ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*) ; 

spa_t *
FUNC5(const char *name)
{
	static spa_t search;	/* spa_t is large; don't allocate on stack */
	spa_t *spa;
	avl_index_t where;
	char *cp;

	FUNC0(FUNC1(&spa_namespace_lock));

	(void) FUNC3(search.spa_name, name, sizeof (search.spa_name));

	/*
	 * If it's a full dataset name, figure out the pool name and
	 * just use that.
	 */
	cp = FUNC4(search.spa_name, "/@#");
	if (cp != NULL)
		*cp = '\0';

	spa = FUNC2(&spa_namespace_avl, &search, &where);

	return (spa);
}