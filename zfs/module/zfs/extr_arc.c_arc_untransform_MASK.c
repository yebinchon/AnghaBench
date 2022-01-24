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
typedef  int /*<<< orphan*/  zbookmark_phys_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  scalar_t__ boolean_t ;
typedef  int /*<<< orphan*/  arc_fill_flags_t ;
typedef  int /*<<< orphan*/  arc_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARC_FILL_IN_PLACE ; 
 int ECKSUM ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FM_EREPORT_ZFS_AUTHENTICATION ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(arc_buf_t *buf, spa_t *spa, const zbookmark_phys_t *zb,
    boolean_t in_place)
{
	int ret;
	arc_fill_flags_t flags = 0;

	if (in_place)
		flags |= ARC_FILL_IN_PLACE;

	ret = FUNC1(buf, spa, zb, flags);
	if (ret == ECKSUM) {
		/*
		 * Convert authentication and decryption errors to EIO
		 * (and generate an ereport) before leaving the ARC.
		 */
		ret = FUNC0(EIO);
		FUNC2(spa, zb);
		FUNC3(FM_EREPORT_ZFS_AUTHENTICATION,
		    spa, NULL, zb, NULL, 0, 0);
	}

	return (ret);
}