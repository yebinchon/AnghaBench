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
struct TYPE_5__ {int /*<<< orphan*/  z_os; scalar_t__ z_sb; int /*<<< orphan*/  z_teardown_lock; } ;
typedef  TYPE_1__ zfsvfs_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(zfsvfs_t *zfsvfs, void *tag)
{
	FUNC2(&zfsvfs->z_teardown_lock, tag);

	if (zfsvfs->z_sb) {
		FUNC0(zfsvfs->z_sb);
	} else {
		FUNC1(zfsvfs->z_os, B_TRUE, zfsvfs);
		FUNC3(zfsvfs);
	}
}