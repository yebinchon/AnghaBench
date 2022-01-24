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
struct TYPE_3__ {int /*<<< orphan*/  dn_mtx; int /*<<< orphan*/  dn_holds; } ;
typedef  TYPE_1__ dnode_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

boolean_t
FUNC5(dnode_t *dn, void *tag)
{
	FUNC1(&dn->dn_mtx);
	if (FUNC4(&dn->dn_holds)) {
		FUNC2(&dn->dn_mtx);
		return (FALSE);
	}
	FUNC0(1 < FUNC3(&dn->dn_holds, tag));
	FUNC2(&dn->dn_mtx);
	return (TRUE);
}