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
struct TYPE_5__ {int /*<<< orphan*/  z_xattr_lock; } ;
typedef  TYPE_1__ znode_t ;
typedef  int /*<<< orphan*/  zfsvfs_t ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  fstrans_cookie_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 
 int FUNC6 (struct inode*,char const*,void*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(struct inode *ip, const char *name, void *value, size_t size)
{
	znode_t *zp = FUNC1(ip);
	zfsvfs_t *zfsvfs = FUNC5(zp);
	cred_t *cr = FUNC0();
	fstrans_cookie_t cookie;
	int error;

	FUNC8(cr);
	cookie = FUNC11();
	FUNC2(zfsvfs);
	FUNC4(zp);
	FUNC9(&zp->z_xattr_lock, RW_READER);
	error = FUNC6(ip, name, value, size, cr);
	FUNC10(&zp->z_xattr_lock);
	FUNC3(zfsvfs);
	FUNC12(cookie);
	FUNC7(cr);

	return (error);
}