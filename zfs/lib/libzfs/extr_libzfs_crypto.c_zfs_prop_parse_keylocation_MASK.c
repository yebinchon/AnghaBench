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
typedef  int /*<<< orphan*/  zfs_keylocation_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_KEYLOCATION_NONE ; 
 int /*<<< orphan*/  ZFS_KEYLOCATION_PROMPT ; 
 int /*<<< orphan*/  ZFS_KEYLOCATION_URI ; 
 scalar_t__ FUNC0 (char*,char const*) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char*,char const*,int) ; 

__attribute__((used)) static zfs_keylocation_t
FUNC3(const char *str)
{
	if (FUNC0("prompt", str) == 0)
		return (ZFS_KEYLOCATION_PROMPT);
	else if (FUNC1(str) > 8 && FUNC2("file:///", str, 8) == 0)
		return (ZFS_KEYLOCATION_URI);

	return (ZFS_KEYLOCATION_NONE);
}