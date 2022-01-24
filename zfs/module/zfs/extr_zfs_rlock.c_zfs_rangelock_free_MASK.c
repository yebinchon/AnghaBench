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
struct TYPE_4__ {int /*<<< orphan*/  lr_read_cv; scalar_t__ lr_read_wanted; int /*<<< orphan*/  lr_write_cv; scalar_t__ lr_write_wanted; } ;
typedef  TYPE_1__ zfs_locked_range_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC2(zfs_locked_range_t *lr)
{
	if (lr->lr_write_wanted)
		FUNC0(&lr->lr_write_cv);

	if (lr->lr_read_wanted)
		FUNC0(&lr->lr_read_cv);

	FUNC1(lr, sizeof (zfs_locked_range_t));
}