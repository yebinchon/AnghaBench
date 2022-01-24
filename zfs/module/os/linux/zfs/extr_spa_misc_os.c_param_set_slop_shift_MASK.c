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
typedef  int /*<<< orphan*/  zfs_kernel_param_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *) ; 

int
FUNC3(const char *buf, zfs_kernel_param_t *kp)
{
	unsigned long val;
	int error;

	error = FUNC1(buf, 0, &val);
	if (error)
		return (FUNC0(error));

	if (val < 1 || val > 31)
		return (FUNC0(-EINVAL));

	error = FUNC2(buf, kp);
	if (error < 0)
		return (FUNC0(error));

	return (0);
}