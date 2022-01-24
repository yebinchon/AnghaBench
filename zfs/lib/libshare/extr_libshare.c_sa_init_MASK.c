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
struct sa_handle_impl {int dummy; } ;
typedef  int /*<<< orphan*/ * sa_handle_t ;
typedef  TYPE_1__* sa_handle_impl_t ;
struct TYPE_5__ {int /*<<< orphan*/ * zfs_libhandle; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

sa_handle_t
FUNC5(int init_service)
{
	sa_handle_impl_t impl_handle;

	impl_handle = FUNC0(1, sizeof (struct sa_handle_impl));

	if (impl_handle == NULL)
		return (NULL);

	impl_handle->zfs_libhandle = FUNC1();

	if (impl_handle->zfs_libhandle != NULL) {
		FUNC2(impl_handle->zfs_libhandle, B_TRUE);
	}

	FUNC3(impl_handle);
	FUNC4(impl_handle, NULL);

	return ((sa_handle_t)impl_handle);
}