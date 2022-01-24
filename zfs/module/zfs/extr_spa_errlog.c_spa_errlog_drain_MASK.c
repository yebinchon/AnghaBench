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
struct TYPE_3__ {int /*<<< orphan*/  spa_errlist_lock; int /*<<< orphan*/  spa_errlist_scrub; int /*<<< orphan*/  spa_errlist_last; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  spa_error_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(spa_t *spa)
{
	spa_error_entry_t *se;
	void *cookie;

	FUNC2(&spa->spa_errlist_lock);

	cookie = NULL;
	while ((se = FUNC0(&spa->spa_errlist_last,
	    &cookie)) != NULL)
		FUNC1(se, sizeof (spa_error_entry_t));
	cookie = NULL;
	while ((se = FUNC0(&spa->spa_errlist_scrub,
	    &cookie)) != NULL)
		FUNC1(se, sizeof (spa_error_entry_t));

	FUNC3(&spa->spa_errlist_lock);
}