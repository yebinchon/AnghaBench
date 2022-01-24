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
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/ * FUNC0 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC1 (struct inode*) ; 
 int V_ACE_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 

int
FUNC7(struct inode *ip, int mode, int flag, cred_t *cr)
{
	znode_t *zp = FUNC0(ip);
	zfsvfs_t *zfsvfs = FUNC1(ip);
	int error;

	FUNC2(zfsvfs);
	FUNC4(zp);

	if (flag & V_ACE_MASK)
		error = FUNC5(zp, mode, flag, B_FALSE, cr);
	else
		error = FUNC6(zp, mode, flag, cr);

	FUNC3(zfsvfs);
	return (error);
}