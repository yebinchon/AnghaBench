#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  os_lock; int /*<<< orphan*/  os_dnodes; } ;
typedef  TYPE_1__ objset_t ;
typedef  int /*<<< orphan*/  dnode_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

void
FUNC15(objset_t *os)
{
	dnode_t *dn_marker;
	dnode_t *dn;

	dn_marker = FUNC7(sizeof (dnode_t), KM_SLEEP);

	FUNC13(&os->os_lock);
	dn = FUNC9(&os->os_dnodes);
	while (dn != NULL) {
		/*
		 * Skip dnodes without holds.  We have to do this dance
		 * because dnode_add_ref() only works if there is already a
		 * hold.  If the dnode has no holds, then it has no dbufs.
		 */
		if (FUNC4(dn, FTAG)) {
			FUNC10(&os->os_dnodes, dn, dn_marker);
			FUNC14(&os->os_lock);

			FUNC5(dn);
			FUNC6(dn, FTAG);

			FUNC13(&os->os_lock);
			dn = FUNC11(&os->os_dnodes, dn_marker);
			FUNC12(&os->os_dnodes, dn_marker);
		} else {
			dn = FUNC11(&os->os_dnodes, dn);
		}
	}
	FUNC14(&os->os_lock);

	FUNC8(dn_marker, sizeof (dnode_t));

	if (FUNC3(os) != NULL) {
		if (FUNC2(os) != NULL)
			FUNC5(FUNC2(os));
		FUNC5(FUNC0(os));
		FUNC5(FUNC3(os));
	}
	FUNC5(FUNC1(os));
}