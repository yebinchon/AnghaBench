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
typedef  int /*<<< orphan*/  zfs_prop_t ;
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  int /*<<< orphan*/  context ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int ZFS_MAXPROPLEN ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(zfs_handle_t *zhp, zfs_prop_t zpt, const char *name,
    char *mntopts, char *mtabopt)
{
	char context[ZFS_MAXPROPLEN];

	if (FUNC2(zhp, zpt, context, sizeof (context),
	    NULL, NULL, 0, B_FALSE) == 0) {
		if (FUNC1(context, "none") != 0)
			FUNC0(name, context, mntopts, mtabopt, B_TRUE);
	}
}