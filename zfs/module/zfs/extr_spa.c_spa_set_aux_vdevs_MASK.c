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
typedef  int uint_t ;
struct TYPE_3__ {int /*<<< orphan*/ * sav_config; } ;
typedef  TYPE_1__ spa_aux_vdev_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_TYPE_NVLIST_ARRAY ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ ** FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ***,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(spa_aux_vdev_t *sav, nvlist_t **devs, int ndevs,
    const char *config)
{
	int i;

	if (sav->sav_config != NULL) {
		nvlist_t **olddevs;
		uint_t oldndevs;
		nvlist_t **newdevs;

		/*
		 * Generate new dev list by concatenating with the
		 * current dev list.
		 */
		FUNC0(FUNC7(sav->sav_config, config,
		    &olddevs, &oldndevs) == 0);

		newdevs = FUNC1(sizeof (void *) *
		    (ndevs + oldndevs), KM_SLEEP);
		for (i = 0; i < oldndevs; i++)
			FUNC0(FUNC5(olddevs[i], &newdevs[i],
			    KM_SLEEP) == 0);
		for (i = 0; i < ndevs; i++)
			FUNC0(FUNC5(devs[i], &newdevs[i + oldndevs],
			    KM_SLEEP) == 0);

		FUNC0(FUNC8(sav->sav_config, config,
		    DATA_TYPE_NVLIST_ARRAY) == 0);

		FUNC0(FUNC3(sav->sav_config,
		    config, newdevs, ndevs + oldndevs) == 0);
		for (i = 0; i < oldndevs + ndevs; i++)
			FUNC6(newdevs[i]);
		FUNC2(newdevs, (oldndevs + ndevs) * sizeof (void *));
	} else {
		/*
		 * Generate a new dev list.
		 */
		FUNC0(FUNC4(&sav->sav_config, NV_UNIQUE_NAME,
		    KM_SLEEP) == 0);
		FUNC0(FUNC3(sav->sav_config, config,
		    devs, ndevs) == 0);
	}
}