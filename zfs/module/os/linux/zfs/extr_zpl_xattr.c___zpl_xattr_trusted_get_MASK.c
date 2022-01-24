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

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EACCES ; 
 int EINVAL ; 
 int /*<<< orphan*/  XATTR_TRUSTED_PREFIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int FUNC4 (struct inode*,char*,void*,size_t) ; 

__attribute__((used)) static int
FUNC5(struct inode *ip, const char *name,
    void *value, size_t size)
{
	char *xattr_name;
	int error;

	if (!FUNC0(CAP_SYS_ADMIN))
		return (-EACCES);
	/* xattr_resolve_name will do this for us if this is defined */
#ifndef HAVE_XATTR_HANDLER_NAME
	if (FUNC3(name, "") == 0)
		return (-EINVAL);
#endif
	xattr_name = FUNC1("%s%s", XATTR_TRUSTED_PREFIX, name);
	error = FUNC4(ip, xattr_name, value, size);
	FUNC2(xattr_name);

	return (error);
}