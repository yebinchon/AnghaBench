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
 int EINVAL ; 
 int /*<<< orphan*/  XATTR_SECURITY_PREFIX ; 
 char* FUNC0 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int FUNC3 (struct inode*,char*,void*,size_t) ; 

__attribute__((used)) static int
FUNC4(struct inode *ip, const char *name,
    void *value, size_t size)
{
	char *xattr_name;
	int error;
	/* xattr_resolve_name will do this for us if this is defined */
#ifndef HAVE_XATTR_HANDLER_NAME
	if (FUNC2(name, "") == 0)
		return (-EINVAL);
#endif
	xattr_name = FUNC0("%s%s", XATTR_SECURITY_PREFIX, name);
	error = FUNC3(ip, xattr_name, value, size);
	FUNC1(xattr_name);

	return (error);
}