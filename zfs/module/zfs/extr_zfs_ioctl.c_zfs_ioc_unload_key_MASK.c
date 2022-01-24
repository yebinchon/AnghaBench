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
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char) ; 

__attribute__((used)) static int
FUNC3(const char *dsname, nvlist_t *innvl, nvlist_t *outnvl)
{
	int ret = 0;

	if (FUNC2(dsname, '@') != NULL || FUNC2(dsname, '%') != NULL) {
		ret = (FUNC0(EINVAL));
		goto out;
	}

	ret = FUNC1(dsname);
	if (ret != 0)
		goto out;

out:
	return (ret);
}