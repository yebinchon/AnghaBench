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
struct mnttab {int /*<<< orphan*/  mnt_mountp; } ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*,struct mnttab*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

boolean_t
FUNC2(libzfs_handle_t *zfs_hdl, const char *special, char **where)
{
	struct mnttab entry;

	if (FUNC0(zfs_hdl, special, &entry) != 0)
		return (B_FALSE);

	if (where != NULL)
		*where = FUNC1(zfs_hdl, entry.mnt_mountp);

	return (B_TRUE);
}