#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ pd_visible; scalar_t__ pd_attr; char* pd_name; } ;
typedef  TYPE_1__ zprop_desc_t ;
typedef  int /*<<< orphan*/  zfs_deleg_note_t ;
typedef  int /*<<< orphan*/  opt_desc ;
typedef  scalar_t__ boolean_t ;
struct TYPE_5__ {char* z_perm; int /*<<< orphan*/  z_note; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  HELP_ALLOW ; 
 int /*<<< orphan*/  HELP_UNALLOW ; 
 scalar_t__ PROP_READONLY ; 
 int ZFS_NUM_DELEG_NOTES ; 
 int ZFS_NUM_PROPS ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,...) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  prop_cmp ; 
 int /*<<< orphan*/  FUNC6 (char const**,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdout ; 
 TYPE_3__* zfs_deleg_perm_tbl ; 
 TYPE_1__* FUNC7 () ; 

__attribute__((used)) static void
FUNC8(boolean_t un, boolean_t requested, const char *msg)
{
	const char *opt_desc[] = {
		"-h", FUNC5("show this help message and exit"),
		"-l", FUNC5("set permission locally"),
		"-d", FUNC5("set permission for descents"),
		"-u", FUNC5("set permission for user"),
		"-g", FUNC5("set permission for group"),
		"-e", FUNC5("set permission for everyone"),
		"-c", FUNC5("set create time permission"),
		"-s", FUNC5("define permission set"),
		/* unallow only */
		"-r", FUNC5("remove permissions recursively"),
	};
	size_t unallow_size = sizeof (opt_desc) / sizeof (char *);
	size_t allow_size = unallow_size - 2;
	const char *props[ZFS_NUM_PROPS];
	int i;
	size_t count = 0;
	FILE *fp = requested ? stdout : stderr;
	zprop_desc_t *pdtbl = FUNC7();
	const char *fmt = FUNC5("%-16s %-14s\t%s\n");

	(void) FUNC3(fp, FUNC5("Usage: %s\n"), FUNC4(un ? HELP_UNALLOW :
	    HELP_ALLOW));
	(void) FUNC3(fp, "%s", FUNC5("Options:\n"));
	for (i = 0; i < (un ? unallow_size : allow_size); i += 2) {
		const char *opt = opt_desc[i];
		const char *optdsc = opt_desc[i + 1];
		(void) FUNC3(fp, FUNC5("  %-10s  %s\n"), opt, optdsc);
	}

	(void) FUNC3(fp, "%s", FUNC5("\nThe following permissions are "
	    "supported:\n\n"));
	(void) FUNC3(fp, fmt, FUNC5("NAME"), FUNC5("TYPE"),
	    FUNC5("NOTES"));
	for (i = 0; i < ZFS_NUM_DELEG_NOTES; i++) {
		const char *perm_name = zfs_deleg_perm_tbl[i].z_perm;
		zfs_deleg_note_t perm_note = zfs_deleg_perm_tbl[i].z_note;
		const char *perm_type = FUNC1(perm_note);
		const char *perm_comment = FUNC0(perm_note);
		(void) FUNC3(fp, fmt, perm_name, perm_type, perm_comment);
	}

	for (i = 0; i < ZFS_NUM_PROPS; i++) {
		zprop_desc_t *pd = &pdtbl[i];
		if (pd->pd_visible != B_TRUE)
			continue;

		if (pd->pd_attr == PROP_READONLY)
			continue;

		props[count++] = pd->pd_name;
	}
	props[count] = NULL;

	FUNC6(props, count, sizeof (char *), prop_cmp);

	for (i = 0; i < count; i++)
		(void) FUNC3(fp, fmt, props[i], FUNC5("property"), "");

	if (msg != NULL)
		(void) FUNC3(fp, FUNC5("\nzfs: error: %s"), msg);

	FUNC2(requested ? 0 : 2);
}