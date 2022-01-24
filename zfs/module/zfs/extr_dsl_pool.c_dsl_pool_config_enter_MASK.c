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
struct TYPE_3__ {int /*<<< orphan*/  dp_config_rwlock; } ;
typedef  TYPE_1__ dsl_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3(dsl_pool_t *dp, void *tag)
{
	/*
	 * We use a "reentrant" reader-writer lock, but not reentrantly.
	 *
	 * The rrwlock can (with the track_all flag) track all reading threads,
	 * which is very useful for debugging which code path failed to release
	 * the lock, and for verifying that the *current* thread does hold
	 * the lock.
	 *
	 * (Unlike a rwlock, which knows that N threads hold it for
	 * read, but not *which* threads, so rw_held(RW_READER) returns TRUE
	 * if any thread holds it for read, even if this thread doesn't).
	 */
	FUNC0(!FUNC2(&dp->dp_config_rwlock, RW_READER));
	FUNC1(&dp->dp_config_rwlock, RW_READER, tag);
}