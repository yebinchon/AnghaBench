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
 int /*<<< orphan*/  ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,char**) ; 

__attribute__((used)) static int
FUNC5(const char *snapname, nvlist_t *innvl, nvlist_t *outnvl)
{
	nvlist_t *redactnvl = NULL;
	char *redactbook = NULL;

	if (FUNC3(innvl, "snapnv", &redactnvl) != 0)
		return (FUNC0(EINVAL));
	if (FUNC2(redactnvl) == 0)
		return (FUNC0(ENXIO));
	if (FUNC4(innvl, "bookname", &redactbook) != 0)
		return (FUNC0(EINVAL));

	return (FUNC1(snapname, redactnvl, redactbook));
}