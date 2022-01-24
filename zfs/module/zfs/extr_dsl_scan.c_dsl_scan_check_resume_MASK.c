#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ zb_object; scalar_t__ zb_blkid; scalar_t__ zb_level; scalar_t__ zb_objset; } ;
typedef  TYPE_2__ zbookmark_phys_t ;
typedef  int /*<<< orphan*/  longlong_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_15__ {scalar_t__ zb_object; } ;
struct TYPE_12__ {TYPE_5__ scn_bookmark; } ;
struct TYPE_14__ {TYPE_1__ scn_phys; } ;
typedef  TYPE_3__ dsl_scan_t ;
typedef  int /*<<< orphan*/  dnode_phys_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 scalar_t__ FUNC1 (TYPE_2__ const*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,TYPE_2__ const*,TYPE_5__*) ; 

__attribute__((used)) static boolean_t
FUNC5(dsl_scan_t *scn, const dnode_phys_t *dnp,
    const zbookmark_phys_t *zb)
{
	/*
	 * We never skip over user/group accounting objects (obj<0)
	 */
	if (!FUNC0(&scn->scn_phys.scn_bookmark) &&
	    (int64_t)zb->zb_object >= 0) {
		/*
		 * If we already visited this bp & everything below (in
		 * a prior txg sync), don't bother doing it again.
		 */
		if (FUNC4(dnp, zb,
		    &scn->scn_phys.scn_bookmark))
			return (B_TRUE);

		/*
		 * If we found the block we're trying to resume from, or
		 * we went past it to a different object, zero it out to
		 * indicate that it's OK to start checking for suspending
		 * again.
		 */
		if (FUNC1(zb, &scn->scn_phys.scn_bookmark, sizeof (*zb)) == 0 ||
		    zb->zb_object > scn->scn_phys.scn_bookmark.zb_object) {
			FUNC3("resuming at %llx/%llx/%llx/%llx\n",
			    (longlong_t)zb->zb_objset,
			    (longlong_t)zb->zb_object,
			    (longlong_t)zb->zb_level,
			    (longlong_t)zb->zb_blkid);
			FUNC2(&scn->scn_phys.scn_bookmark, sizeof (*zb));
		}
	}
	return (B_FALSE);
}