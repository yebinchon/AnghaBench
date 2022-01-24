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
typedef  int /*<<< orphan*/  znode_t ;
typedef  int /*<<< orphan*/  zfsvfs_t ;
typedef  int /*<<< orphan*/  vsecattr_t ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int ATTR_NOACLCHECK ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/ * FUNC0 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC6(struct inode *ip, vsecattr_t *vsecp, int flag, cred_t *cr)
{
	znode_t *zp = FUNC0(ip);
	zfsvfs_t *zfsvfs = FUNC1(ip);
	int error;
	boolean_t skipaclchk = (flag & ATTR_NOACLCHECK) ? B_TRUE : B_FALSE;

	FUNC2(zfsvfs);
	FUNC4(zp);
	error = FUNC5(zp, vsecp, skipaclchk, cr);
	FUNC3(zfsvfs);

	return (error);
}