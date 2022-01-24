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
struct TYPE_3__ {unsigned int interval; unsigned int* burst; int /*<<< orphan*/  lock; scalar_t__ start; scalar_t__ count; } ;
typedef  TYPE_1__ zfs_ratelimit_t ;

/* Variables and functions */
 int /*<<< orphan*/  MUTEX_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC1(zfs_ratelimit_t *rl, unsigned int *burst,
    unsigned int interval)
{
	rl->count = 0;
	rl->start = 0;
	rl->interval = interval;
	rl->burst = burst;
	FUNC0(&rl->lock, NULL, MUTEX_DEFAULT, NULL);
}