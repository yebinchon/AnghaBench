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
typedef  int /*<<< orphan*/  Relids ;
typedef  int /*<<< orphan*/  PlannerInfo ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool
FUNC2(PlannerInfo *root, Relids relid_set)
{
	int relid = -1;

	while ((relid = FUNC0(relid_set, relid)) >= 0)
	{
		if (FUNC1(root, relid))
			return true;
	}
	return false;
}