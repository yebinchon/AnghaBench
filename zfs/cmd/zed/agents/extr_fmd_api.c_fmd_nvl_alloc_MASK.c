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
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  fmd_hdl_t ;

/* Variables and functions */
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

nvlist_t *
FUNC1(fmd_hdl_t *hdl, int flags)
{
	nvlist_t *nvl = NULL;

	if (FUNC0(&nvl, NV_UNIQUE_NAME, 0) != 0)
		return (NULL);

	return (nvl);
}