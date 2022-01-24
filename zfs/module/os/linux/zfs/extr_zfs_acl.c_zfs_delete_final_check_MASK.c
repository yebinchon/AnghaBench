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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  mode_t ;
typedef  int /*<<< orphan*/  cred_t ;
struct TYPE_3__ {int /*<<< orphan*/  i_uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int S_IWUSR ; 
 int S_IXUSR ; 
 int /*<<< orphan*/  ZFS_OWNER ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(znode_t *zp, znode_t *dzp,
    mode_t available_perms, cred_t *cr)
{
	int error;
	uid_t downer;

	downer = FUNC4(FUNC2(dzp), FUNC0(FUNC1(dzp)->i_uid),
	    cr, ZFS_OWNER);

	error = FUNC3(cr, FUNC1(dzp),
	    downer, available_perms, S_IWUSR|S_IXUSR);

	if (error == 0)
		error = FUNC5(dzp, zp, cr);

	return (error);
}