#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  z_lock; int /*<<< orphan*/  z_sa_hdl; scalar_t__ z_is_sa; } ;
typedef  TYPE_1__ znode_t ;
typedef  int /*<<< orphan*/  zfsvfs_t ;
typedef  int /*<<< orphan*/  uio_t ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int
FUNC10(struct inode *ip, uio_t *uio, cred_t *cr)
{
	znode_t		*zp = FUNC0(ip);
	zfsvfs_t	*zfsvfs = FUNC1(ip);
	int		error;

	FUNC3(zfsvfs);
	FUNC5(zp);

	FUNC6(&zp->z_lock);
	if (zp->z_is_sa)
		error = FUNC8(zp->z_sa_hdl,
		    FUNC2(zfsvfs), uio);
	else
		error = FUNC9(zp, uio);
	FUNC7(&zp->z_lock);

	FUNC4(zfsvfs);
	return (error);
}