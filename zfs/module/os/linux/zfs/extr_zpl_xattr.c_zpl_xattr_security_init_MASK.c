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
struct qstr {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct inode*,struct inode*,struct qstr const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zpl_xattr_security_init_impl ; 

int
FUNC1(struct inode *ip, struct inode *dip,
    const struct qstr *qstr)
{
	return FUNC0(ip, dip, qstr,
	    &zpl_xattr_security_init_impl, NULL);
}