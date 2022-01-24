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
struct mnttab {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct mnttab*) ; 
 int /*<<< orphan*/  mnt_fstype ; 
 int /*<<< orphan*/  mnt_mntopts ; 
 int /*<<< orphan*/  mnt_mountp ; 
 int /*<<< orphan*/  mnt_special ; 

int
FUNC2(FILE *fp, struct mnttab *mgetp, struct mnttab *mrefp)
{
	int ret;

	while (
	    ((ret = FUNC1(fp, mgetp)) == 0) && (
	    FUNC0(mnt_special) || FUNC0(mnt_mountp) ||
	    FUNC0(mnt_fstype) || FUNC0(mnt_mntopts))) { }

	return (ret);
}