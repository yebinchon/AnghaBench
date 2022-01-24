#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  fz_locks_context ;

/* Variables and functions */
 int FZ_LOCK_MAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mudraw_locks ; 
 int /*<<< orphan*/ * mutexes ; 

__attribute__((used)) static fz_locks_context *FUNC2(void)
{
	int i;
	int failed = 0;

	for (i = 0; i < FZ_LOCK_MAX; i++)
		failed |= FUNC1(&mutexes[i]);

	if (failed)
	{
		FUNC0();
		return NULL;
	}

	return &mudraw_locks;
}