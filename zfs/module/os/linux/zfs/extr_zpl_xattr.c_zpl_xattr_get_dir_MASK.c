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
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  LOOKUP_XATTR ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 size_t FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*,char*,struct inode**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct inode*,void*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct inode *ip, const char *name, void *value,
    size_t size, cred_t *cr)
{
	struct inode *dxip = NULL;
	struct inode *xip = NULL;
	loff_t pos = 0;
	int error;

	/* Lookup the xattr directory */
	error = -FUNC2(ip, NULL, &dxip, LOOKUP_XATTR, cr, NULL, NULL);
	if (error)
		goto out;

	/* Lookup a specific xattr name in the directory */
	error = -FUNC2(dxip, (char *)name, &xip, 0, cr, NULL, NULL);
	if (error)
		goto out;

	if (!size) {
		error = FUNC0(xip);
		goto out;
	}

	if (size < FUNC0(xip)) {
		error = -ERANGE;
		goto out;
	}

	error = FUNC3(xip, value, size, &pos, UIO_SYSSPACE, 0, cr);
out:
	if (xip)
		FUNC1(xip);

	if (dxip)
		FUNC1(dxip);

	return (error);
}