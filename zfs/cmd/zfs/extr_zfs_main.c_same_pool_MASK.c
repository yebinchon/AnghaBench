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
typedef  int /*<<< orphan*/  zfs_handle_t ;

/* Variables and functions */
 int B_FALSE ; 
 int FUNC0 (char const*,char*) ; 
 scalar_t__ FUNC1 (char const*,char const*,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(zfs_handle_t *zhp, const char *name)
{
	int len1 = FUNC0(name, "/@");
	const char *zhname = FUNC2(zhp);
	int len2 = FUNC0(zhname, "/@");

	if (len1 != len2)
		return (B_FALSE);
	return (FUNC1(name, zhname, len1) == 0);
}