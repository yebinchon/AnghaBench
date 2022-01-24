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
typedef  int /*<<< orphan*/  znode_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  int boolean_t ;
struct TYPE_3__ {int /*<<< orphan*/  i_uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACE_ALL_PERMS ; 
 int B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_OWNER ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

boolean_t
FUNC6(znode_t *zp, cred_t *cr)
{
	uint32_t have = ACE_ALL_PERMS;

	if (FUNC5(zp, &have, B_TRUE, cr) != 0) {
		uid_t owner;

		owner = FUNC4(FUNC2(zp),
		    FUNC0(FUNC1(zp)->i_uid), cr, ZFS_OWNER);
		return (FUNC3(cr, FUNC1(zp), owner) == 0);
	}
	return (B_TRUE);
}