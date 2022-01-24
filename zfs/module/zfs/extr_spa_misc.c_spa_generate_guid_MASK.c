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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 

uint64_t
FUNC3(spa_t *spa)
{
	uint64_t guid = FUNC0(-1ULL);

	if (spa != NULL) {
		while (guid == 0 || FUNC2(FUNC1(spa), guid))
			guid = FUNC0(-1ULL);
	} else {
		while (guid == 0 || FUNC2(guid, 0))
			guid = FUNC0(-1ULL);
	}

	return (guid);
}