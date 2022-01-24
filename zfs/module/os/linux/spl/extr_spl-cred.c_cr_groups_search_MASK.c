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
struct group_info {unsigned int ngroups; } ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct group_info const*,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(const struct group_info *group_info, kgid_t grp)
{
	unsigned int left, right, mid;
	int cmp;

	if (!group_info)
		return (0);

	left = 0;
	right = group_info->ngroups;
	while (left < right) {
		mid = (left + right) / 2;
		cmp = FUNC1(grp) -
		    FUNC1(FUNC0(group_info, mid));

		if (cmp > 0)
			left = mid + 1;
		else if (cmp < 0)
			right = mid;
		else
			return (1);
	}
	return (0);
}