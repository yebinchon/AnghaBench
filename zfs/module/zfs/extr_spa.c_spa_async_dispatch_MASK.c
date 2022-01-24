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
struct TYPE_5__ {int /*<<< orphan*/  spa_async_lock; int /*<<< orphan*/ * spa_async_thread; int /*<<< orphan*/  spa_async_suspended; } ;
typedef  TYPE_1__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  TS_RUN ; 
 int /*<<< orphan*/  maxclsyspri ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  p0 ; 
 int /*<<< orphan*/ * rootdir ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  spa_async_thread ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(spa_t *spa)
{
	FUNC0(&spa->spa_async_lock);
	if (FUNC2(spa) &&
	    !spa->spa_async_suspended &&
	    spa->spa_async_thread == NULL &&
	    rootdir != NULL)
		spa->spa_async_thread = FUNC3(NULL, 0,
		    spa_async_thread, spa, 0, &p0, TS_RUN, maxclsyspri);
	FUNC1(&spa->spa_async_lock);
}