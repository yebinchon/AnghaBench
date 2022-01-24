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
typedef  TYPE_1__* ext2_extent_handle_t ;
struct TYPE_4__ {int max_paths; struct TYPE_4__* path; struct TYPE_4__* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**) ; 

void FUNC1(ext2_extent_handle_t handle)
{
	int			i;

	if (!handle)
		return;

	if (handle->path) {
		for (i = 1; i < handle->max_paths; i++) {
			if (handle->path[i].buf)
				FUNC0(&handle->path[i].buf);
		}
		FUNC0(&handle->path);
	}
	FUNC0(&handle);
}