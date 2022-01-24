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
typedef  scalar_t__ uint64_t ;
struct mnttab {char* mnt_mntopts; } ;
typedef  int /*<<< orphan*/  smbshareopts ;
typedef  int /*<<< orphan*/  shareopts ;
typedef  int /*<<< orphan*/  mountpoint ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  EZFS_MOUNTFAILED ; 
 scalar_t__ GLOBAL_ZONEID ; 
 int MILLISEC ; 
 int /*<<< orphan*/  MNTOPT_REMOUNT ; 
 int MS_CRYPT ; 
 int MS_FORCE ; 
#define  OP_MOUNT 129 
#define  OP_SHARE 128 
 scalar_t__ ZFS_CANMOUNT_NOAUTO ; 
 scalar_t__ ZFS_CANMOUNT_OFF ; 
 scalar_t__ ZFS_KEYSTATUS_UNAVAILABLE ; 
 int ZFS_MAXPROPLEN ; 
 int /*<<< orphan*/  ZFS_PROP_CANMOUNT ; 
 int /*<<< orphan*/  ZFS_PROP_ENCRYPTION ; 
 int /*<<< orphan*/  ZFS_PROP_INCONSISTENT ; 
 int /*<<< orphan*/  ZFS_PROP_KEYSTATUS ; 
 int /*<<< orphan*/  ZFS_PROP_MOUNTPOINT ; 
 int /*<<< orphan*/  ZFS_PROP_RECEIVE_RESUME_TOKEN ; 
 int /*<<< orphan*/  ZFS_PROP_REDACTED ; 
 int /*<<< orphan*/  ZFS_PROP_SHARENFS ; 
 int /*<<< orphan*/  ZFS_PROP_SHARESMB ; 
 int /*<<< orphan*/  ZFS_PROP_ZONED ; 
 int ZFS_TYPE_FILESYSTEM ; 
 scalar_t__ ZIO_CRYPT_OFF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct mnttab*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC21(zfs_handle_t *zhp, int op, int flags, char *protocol,
    boolean_t explicit, const char *options)
{
	char mountpoint[ZFS_MAXPROPLEN];
	char shareopts[ZFS_MAXPROPLEN];
	char smbshareopts[ZFS_MAXPROPLEN];
	const char *cmdname = op == OP_SHARE ? "share" : "mount";
	struct mnttab mnt;
	uint64_t zoned, canmount;
	boolean_t shared_nfs, shared_smb;

	FUNC0(FUNC11(zhp) & ZFS_TYPE_FILESYSTEM);

	/*
	 * Check to make sure we can mount/share this dataset.  If we
	 * are in the global zone and the filesystem is exported to a
	 * local zone, or if we are in a local zone and the
	 * filesystem is not exported, then it is an error.
	 */
	zoned = FUNC17(zhp, ZFS_PROP_ZONED);

	if (zoned && FUNC3() == GLOBAL_ZONEID) {
		if (!explicit)
			return (0);

		(void) FUNC1(stderr, FUNC2("cannot %s '%s': "
		    "dataset is exported to a local zone\n"), cmdname,
		    FUNC10(zhp));
		return (1);

	} else if (!zoned && FUNC3() != GLOBAL_ZONEID) {
		if (!explicit)
			return (0);

		(void) FUNC1(stderr, FUNC2("cannot %s '%s': "
		    "permission denied\n"), cmdname,
		    FUNC10(zhp));
		return (1);
	}

	/*
	 * Ignore any filesystems which don't apply to us. This
	 * includes those with a legacy mountpoint, or those with
	 * legacy share options.
	 */
	FUNC9(FUNC16(zhp, ZFS_PROP_MOUNTPOINT, mountpoint,
	    sizeof (mountpoint), NULL, NULL, 0, B_FALSE) == 0);
	FUNC9(FUNC16(zhp, ZFS_PROP_SHARENFS, shareopts,
	    sizeof (shareopts), NULL, NULL, 0, B_FALSE) == 0);
	FUNC9(FUNC16(zhp, ZFS_PROP_SHARESMB, smbshareopts,
	    sizeof (smbshareopts), NULL, NULL, 0, B_FALSE) == 0);

	if (op == OP_SHARE && FUNC7(shareopts, "off") == 0 &&
	    FUNC7(smbshareopts, "off") == 0) {
		if (!explicit)
			return (0);

		(void) FUNC1(stderr, FUNC2("cannot share '%s': "
		    "legacy share\n"), FUNC10(zhp));
		(void) FUNC1(stderr, "%s", FUNC2("use share(1M) to "
		    "share this filesystem, or set "
		    "sharenfs property on\n"));
		return (1);
	}

	/*
	 * We cannot share or mount legacy filesystems. If the
	 * shareopts is non-legacy but the mountpoint is legacy, we
	 * treat it as a legacy share.
	 */
	if (FUNC7(mountpoint, "legacy") == 0) {
		if (!explicit)
			return (0);

		(void) FUNC1(stderr, FUNC2("cannot %s '%s': "
		    "legacy mountpoint\n"), cmdname, FUNC10(zhp));
		(void) FUNC1(stderr, FUNC2("use %s(1M) to "
		    "%s this filesystem\n"), cmdname, cmdname);
		return (1);
	}

	if (FUNC7(mountpoint, "none") == 0) {
		if (!explicit)
			return (0);

		(void) FUNC1(stderr, FUNC2("cannot %s '%s': no "
		    "mountpoint set\n"), cmdname, FUNC10(zhp));
		return (1);
	}

	/*
	 * canmount	explicit	outcome
	 * on		no		pass through
	 * on		yes		pass through
	 * off		no		return 0
	 * off		yes		display error, return 1
	 * noauto	no		return 0
	 * noauto	yes		pass through
	 */
	canmount = FUNC17(zhp, ZFS_PROP_CANMOUNT);
	if (canmount == ZFS_CANMOUNT_OFF) {
		if (!explicit)
			return (0);

		(void) FUNC1(stderr, FUNC2("cannot %s '%s': "
		    "'canmount' property is set to 'off'\n"), cmdname,
		    FUNC10(zhp));
		return (1);
	} else if (canmount == ZFS_CANMOUNT_NOAUTO && !explicit) {
		return (0);
	}

	/*
	 * If this filesystem is encrypted and does not have
	 * a loaded key, we can not mount it.
	 */
	if ((flags & MS_CRYPT) == 0 &&
	    FUNC17(zhp, ZFS_PROP_ENCRYPTION) != ZIO_CRYPT_OFF &&
	    FUNC17(zhp, ZFS_PROP_KEYSTATUS) ==
	    ZFS_KEYSTATUS_UNAVAILABLE) {
		if (!explicit)
			return (0);

		(void) FUNC1(stderr, FUNC2("cannot %s '%s': "
		    "encryption key not loaded\n"), cmdname, FUNC10(zhp));
		return (1);
	}

	/*
	 * If this filesystem is inconsistent and has a receive resume
	 * token, we can not mount it.
	 */
	if (FUNC17(zhp, ZFS_PROP_INCONSISTENT) &&
	    FUNC16(zhp, ZFS_PROP_RECEIVE_RESUME_TOKEN,
	    NULL, 0, NULL, NULL, 0, B_TRUE) == 0) {
		if (!explicit)
			return (0);

		(void) FUNC1(stderr, FUNC2("cannot %s '%s': "
		    "Contains partially-completed state from "
		    "\"zfs receive -s\", which can be resumed with "
		    "\"zfs send -t\"\n"),
		    cmdname, FUNC10(zhp));
		return (1);
	}

	if (FUNC17(zhp, ZFS_PROP_REDACTED) && !(flags & MS_FORCE)) {
		if (!explicit)
			return (0);

		(void) FUNC1(stderr, FUNC2("cannot %s '%s': "
		    "Dataset is not complete, was created by receiving "
		    "a redacted zfs send stream.\n"), cmdname,
		    FUNC10(zhp));
		return (1);
	}

	/*
	 * At this point, we have verified that the mountpoint and/or
	 * shareopts are appropriate for auto management. If the
	 * filesystem is already mounted or shared, return (failing
	 * for explicit requests); otherwise mount or share the
	 * filesystem.
	 */
	switch (op) {
	case OP_SHARE:

		shared_nfs = FUNC13(zhp, NULL);
		shared_smb = FUNC14(zhp, NULL);

		if ((shared_nfs && shared_smb) ||
		    (shared_nfs && FUNC7(shareopts, "on") == 0 &&
		    FUNC7(smbshareopts, "off") == 0) ||
		    (shared_smb && FUNC7(smbshareopts, "on") == 0 &&
		    FUNC7(shareopts, "off") == 0)) {
			if (!explicit)
				return (0);

			(void) FUNC1(stderr, FUNC2("cannot share "
			    "'%s': filesystem already shared\n"),
			    FUNC10(zhp));
			return (1);
		}

		if (!FUNC12(zhp, NULL) &&
		    FUNC15(zhp, NULL, flags) != 0)
			return (1);

		if (protocol == NULL) {
			if (FUNC20(zhp) != 0)
				return (1);
		} else if (FUNC7(protocol, "nfs") == 0) {
			if (FUNC18(zhp))
				return (1);
		} else if (FUNC7(protocol, "smb") == 0) {
			if (FUNC19(zhp))
				return (1);
		} else {
			(void) FUNC1(stderr, FUNC2("cannot share "
			    "'%s': invalid share type '%s' "
			    "specified\n"),
			    FUNC10(zhp), protocol);
			return (1);
		}

		break;

	case OP_MOUNT:
		if (options == NULL)
			mnt.mnt_mntopts = "";
		else
			mnt.mnt_mntopts = (char *)options;

		if (!FUNC4(&mnt, MNTOPT_REMOUNT) &&
		    FUNC12(zhp, NULL)) {
			if (!explicit)
				return (0);

			(void) FUNC1(stderr, FUNC2("cannot mount "
			    "'%s': filesystem already mounted\n"),
			    FUNC10(zhp));
			return (1);
		}

		if (FUNC15(zhp, options, flags) != 0) {
			/*
			 * Check if a mount sneaked in after we checked
			 */
			if (!explicit &&
			    FUNC5(g_zfs) == EZFS_MOUNTFAILED) {
				FUNC8(10 * MILLISEC);
				FUNC6(g_zfs, B_FALSE);

				if (FUNC12(zhp, NULL)) {
					(void) FUNC1(stderr, FUNC2(
					    "Ignoring previous 'already "
					    "mounted' error for '%s'\n"),
					    FUNC10(zhp));
					return (0);
				}
			}
			return (1);
		}
		break;
	}

	return (0);
}