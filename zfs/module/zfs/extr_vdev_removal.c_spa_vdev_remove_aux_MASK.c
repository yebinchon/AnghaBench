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

/* Variables and functions */
 int /*<<< orphan*/  DATA_TYPE_NVLIST_ARRAY ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ ** FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(nvlist_t *config, char *name, nvlist_t **dev, int count,
    nvlist_t *dev_to_remove)
{
	nvlist_t **newdev = NULL;

	if (count > 1)
		newdev = FUNC1((count - 1) * sizeof (void *), KM_SLEEP);

	for (int i = 0, j = 0; i < count; i++) {
		if (dev[i] == dev_to_remove)
			continue;
		FUNC0(FUNC4(dev[i], &newdev[j++], KM_SLEEP) == 0);
	}

	FUNC0(FUNC6(config, name, DATA_TYPE_NVLIST_ARRAY) == 0);
	FUNC0(FUNC3(config, name, newdev, count - 1) == 0);

	for (int i = 0; i < count - 1; i++)
		FUNC5(newdev[i]);

	if (count > 1)
		FUNC2(newdev, (count - 1) * sizeof (void *));
}