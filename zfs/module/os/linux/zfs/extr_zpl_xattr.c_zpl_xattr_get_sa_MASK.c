#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * z_xattr_cached; int /*<<< orphan*/  z_lock; int /*<<< orphan*/  z_xattr_lock; } ;
typedef  TYPE_1__ znode_t ;
typedef  int uint_t ;
typedef  int /*<<< orphan*/  uchar_t ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ERANGE ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **,int*) ; 
 int FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC8(struct inode *ip, const char *name, void *value, size_t size)
{
	znode_t *zp = FUNC1(ip);
	uchar_t *nv_value;
	uint_t nv_size;
	int error = 0;

	FUNC0(FUNC2(&zp->z_xattr_lock));

	FUNC4(&zp->z_lock);
	if (zp->z_xattr_cached == NULL)
		error = -FUNC7(zp);
	FUNC5(&zp->z_lock);

	if (error)
		return (error);

	FUNC0(zp->z_xattr_cached);
	error = -FUNC6(zp->z_xattr_cached, name,
	    &nv_value, &nv_size);
	if (error)
		return (error);

	if (size == 0 || value == NULL)
		return (nv_size);

	if (size < nv_size)
		return (-ERANGE);

	FUNC3(value, nv_value, nv_size);

	return (nv_size);
}