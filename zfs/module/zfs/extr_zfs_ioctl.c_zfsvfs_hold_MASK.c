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
struct TYPE_5__ {int /*<<< orphan*/  z_teardown_lock; scalar_t__ z_unmounted; } ;
typedef  TYPE_1__ zfsvfs_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ,TYPE_1__**) ; 

__attribute__((used)) static int
FUNC5(const char *name, void *tag, zfsvfs_t **zfvp, boolean_t writer)
{
	int error = 0;

	if (FUNC1(name, zfvp) != 0)
		error = FUNC4(name, B_FALSE, zfvp);
	if (error == 0) {
		FUNC2(&(*zfvp)->z_teardown_lock, (writer) ? RW_WRITER :
		    RW_READER, tag);
		if ((*zfvp)->z_unmounted) {
			/*
			 * XXX we could probably try again, since the unmounting
			 * thread should be just about to disassociate the
			 * objset from the zfsvfs.
			 */
			FUNC3(&(*zfvp)->z_teardown_lock, tag);
			return (FUNC0(EBUSY));
		}
	}
	return (error);
}