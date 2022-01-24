#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* sa_share_impl_t ;
typedef  int /*<<< orphan*/  sa_handle_t ;
typedef  TYPE_2__* sa_handle_impl_t ;
struct TYPE_8__ {TYPE_1__* shares; int /*<<< orphan*/ * zfs_libhandle; } ;
struct TYPE_7__ {struct TYPE_7__* next; int /*<<< orphan*/ * dataset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void
FUNC5(sa_handle_t handle)
{
	sa_handle_impl_t impl_handle = (sa_handle_impl_t)handle;
	sa_share_impl_t impl_share, next;
	sa_share_impl_t *pcurr;

	if (impl_handle == NULL)
		return;

	/*
	 * clean up shares which don't have a non-NULL dataset property,
	 * which means they're in sharetab but we couldn't find their
	 * ZFS dataset.
	 */
	pcurr = &(impl_handle->shares);
	impl_share = *pcurr;
	while (impl_share != NULL) {
		next = impl_share->next;

		if (impl_share->dataset == NULL) {
			/* remove item from the linked list */
			*pcurr = next;

			FUNC3(impl_share, NULL);

			FUNC1(impl_share);
		} else {
			pcurr = &(impl_share->next);
		}

		impl_share = next;
	}

	FUNC4(impl_handle);

	if (impl_handle->zfs_libhandle != NULL)
		FUNC2(impl_handle->zfs_libhandle);

	impl_share = impl_handle->shares;
	while (impl_share != NULL) {
		next = impl_share->next;
		FUNC1(impl_share);
		impl_share = next;
	}

	FUNC0(impl_handle);
}