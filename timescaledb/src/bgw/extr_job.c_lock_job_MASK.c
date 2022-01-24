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
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  LOCKTAG ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  scalar_t__ JobLockLifetime ;

/* Variables and functions */
 scalar_t__ LOCKACQUIRE_NOT_AVAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 scalar_t__ SESSION_LOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC2(int32 job_id, LOCKMODE mode, JobLockLifetime lock_type, LOCKTAG *tag, bool block)
{
	/* Use a special pseudo-random field 4 value to avoid conflicting with user-advisory-locks */
	FUNC1(*tag, MyDatabaseId, job_id, 0);

	return FUNC0(tag, mode, lock_type == SESSION_LOCK, !block) != LOCKACQUIRE_NOT_AVAIL;
}