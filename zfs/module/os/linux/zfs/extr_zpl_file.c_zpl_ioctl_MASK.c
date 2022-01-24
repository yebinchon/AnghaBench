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
struct file {int dummy; } ;

/* Variables and functions */
 long ENOTTY ; 
#define  FS_IOC_GETFLAGS 131 
#define  FS_IOC_SETFLAGS 130 
#define  ZFS_IOC_FSGETXATTR 129 
#define  ZFS_IOC_FSSETXATTR 128 
 long FUNC0 (struct file*,void*) ; 
 long FUNC1 (struct file*,void*) ; 
 long FUNC2 (struct file*,void*) ; 
 long FUNC3 (struct file*,void*) ; 

__attribute__((used)) static long
FUNC4(struct file *filp, unsigned int cmd, unsigned long arg)
{
	switch (cmd) {
	case FS_IOC_GETFLAGS:
		return (FUNC0(filp, (void *)arg));
	case FS_IOC_SETFLAGS:
		return (FUNC2(filp, (void *)arg));
	case ZFS_IOC_FSGETXATTR:
		return (FUNC1(filp, (void *)arg));
	case ZFS_IOC_FSSETXATTR:
		return (FUNC3(filp, (void *)arg));
	default:
		return (-ENOTTY);
	}
}