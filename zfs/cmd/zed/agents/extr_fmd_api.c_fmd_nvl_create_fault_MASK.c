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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  fmd_hdl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FM_CLASS ; 
 int /*<<< orphan*/  FM_FAULT_ASRU ; 
 int /*<<< orphan*/  FM_FAULT_CERTAINTY ; 
 int /*<<< orphan*/  FM_FAULT_FRU ; 
 int /*<<< orphan*/  FM_FAULT_RESOURCE ; 
 int /*<<< orphan*/  FM_FAULT_VERSION ; 
 int /*<<< orphan*/  FM_VERSION ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

nvlist_t *
FUNC6(fmd_hdl_t *hdl, const char *class, uint8_t certainty,
    nvlist_t *asru, nvlist_t *fru, nvlist_t *resource)
{
	nvlist_t *nvl;
	int err = 0;

	if (FUNC3(&nvl, NV_UNIQUE_NAME, 0) != 0)
		FUNC5("failed to xalloc fault nvlist");

	err |= FUNC2(nvl, FM_VERSION, FM_FAULT_VERSION);
	err |= FUNC1(nvl, FM_CLASS, class);
	err |= FUNC2(nvl, FM_FAULT_CERTAINTY, certainty);

	if (asru != NULL)
		err |= FUNC0(nvl, FM_FAULT_ASRU, asru);
	if (fru != NULL)
		err |= FUNC0(nvl, FM_FAULT_FRU, fru);
	if (resource != NULL)
		err |= FUNC0(nvl, FM_FAULT_RESOURCE, resource);

	if (err)
		FUNC5("failed to populate nvlist: %s\n", FUNC4(err));

	return (nvl);
}