#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_2__ {int z_flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  XATTR_USER_PREFIX ; 
 int ZSB_XATTR ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int FUNC4 (struct inode*,char*,void const*,size_t,int) ; 

__attribute__((used)) static int
FUNC5(struct inode *ip, const char *name,
    const void *value, size_t size, int flags)
{
	char *xattr_name;
	int error;
	/* xattr_resolve_name will do this for us if this is defined */
#ifndef HAVE_XATTR_HANDLER_NAME
	if (FUNC3(name, "") == 0)
		return (-EINVAL);
#endif
	if (!(FUNC0(ip)->z_flags & ZSB_XATTR))
		return (-EOPNOTSUPP);

	xattr_name = FUNC1("%s%s", XATTR_USER_PREFIX, name);
	error = FUNC4(ip, xattr_name, value, size, flags);
	FUNC2(xattr_name);

	return (error);
}