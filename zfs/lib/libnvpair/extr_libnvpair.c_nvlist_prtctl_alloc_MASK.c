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
struct nvlist_prtctl {int dummy; } ;
struct nvlist_printops {int dummy; } ;
typedef  struct nvlist_prtctl* nvlist_prtctl_t ;

/* Variables and functions */
 struct nvlist_printops* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvlist_prtctl*) ; 
 struct nvlist_prtctl* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct nvlist_prtctl*,struct nvlist_printops*) ; 
 int /*<<< orphan*/  stdout ; 

nvlist_prtctl_t
FUNC4(void)
{
	struct nvlist_prtctl *pctl;
	struct nvlist_printops *ops;

	if ((pctl = FUNC2(sizeof (*pctl))) == NULL)
		return (NULL);

	if ((ops = FUNC0(1, sizeof (*ops))) == NULL) {
		FUNC1(pctl);
		return (NULL);
	}

	FUNC3(stdout, pctl, ops);

	return (pctl);
}