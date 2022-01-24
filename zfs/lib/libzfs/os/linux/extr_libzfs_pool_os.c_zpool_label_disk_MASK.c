#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ zpool_start_block; int /*<<< orphan*/  zpool_config; } ;
typedef  TYPE_2__ zpool_handle_t ;
typedef  scalar_t__ uint64_t ;
struct dk_gpt {scalar_t__ efi_last_u_lba; TYPE_1__* efi_parts; } ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  scalar_t__ diskaddr_t ;
struct TYPE_4__ {size_t p_size; int /*<<< orphan*/  p_tag; scalar_t__ p_start; int /*<<< orphan*/  p_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKFLSBUF ; 
 int /*<<< orphan*/  DISK_LABEL_WAIT ; 
 char* DISK_ROOT ; 
 size_t EFI_MIN_RESV_SIZE ; 
 int /*<<< orphan*/  EFI_NUMPAR ; 
 int /*<<< orphan*/  EFI_PART_NAME_LEN ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  EZFS_LABELFAILED ; 
 int /*<<< orphan*/  EZFS_NOCAP ; 
 int /*<<< orphan*/  EZFS_OPENFAILED ; 
 scalar_t__ MAXOFFSET_T ; 
 int MAXPATHLEN ; 
 scalar_t__ NEW_START_BLOCK ; 
 int O_DIRECT ; 
 int O_EXCL ; 
 int O_RDWR ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARTITION_END_ALIGNMENT ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  V_RESERVED ; 
 int /*<<< orphan*/  V_USR ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct dk_gpt**) ; 
 int /*<<< orphan*/  FUNC4 (struct dk_gpt*) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int,struct dk_gpt*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC18 (char*) ; 
 int FUNC19 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC21(libzfs_handle_t *hdl, zpool_handle_t *zhp, char *name)
{
	char path[MAXPATHLEN];
	struct dk_gpt *vtoc;
	int rval, fd;
	size_t resv = EFI_MIN_RESV_SIZE;
	uint64_t slice_size;
	diskaddr_t start_block;
	char errbuf[1024];

	/* prepare an error message just in case */
	(void) FUNC13(errbuf, sizeof (errbuf),
	    FUNC2(TEXT_DOMAIN, "cannot label '%s'"), name);

	if (zhp) {
		nvlist_t *nvroot;

		FUNC14(FUNC11(zhp->zpool_config,
		    ZPOOL_CONFIG_VDEV_TREE, &nvroot) == 0);

		if (zhp->zpool_start_block == 0)
			start_block = FUNC7(nvroot);
		else
			start_block = zhp->zpool_start_block;
		zhp->zpool_start_block = start_block;
	} else {
		/* new pool */
		start_block = NEW_START_BLOCK;
	}

	(void) FUNC13(path, sizeof (path), "%s/%s", DISK_ROOT, name);

	if ((fd = FUNC12(path, O_RDWR|O_DIRECT|O_EXCL)) < 0) {
		/*
		 * This shouldn't happen.  We've long since verified that this
		 * is a valid device.
		 */
		FUNC17(hdl, FUNC2(TEXT_DOMAIN, "cannot "
		    "label '%s': unable to open device: %d"), path, errno);
		return (FUNC16(hdl, EZFS_OPENFAILED, errbuf));
	}

	if (FUNC3(fd, EFI_NUMPAR, &vtoc) != 0) {
		/*
		 * The only way this can fail is if we run out of memory, or we
		 * were unable to read the disk's capacity
		 */
		if (errno == ENOMEM)
			(void) FUNC10(hdl);

		(void) FUNC1(fd);
		FUNC17(hdl, FUNC2(TEXT_DOMAIN, "cannot "
		    "label '%s': unable to read disk capacity"), path);

		return (FUNC16(hdl, EZFS_NOCAP, errbuf));
	}

	slice_size = vtoc->efi_last_u_lba + 1;
	slice_size -= EFI_MIN_RESV_SIZE;
	if (start_block == MAXOFFSET_T)
		start_block = NEW_START_BLOCK;
	slice_size -= start_block;
	slice_size = FUNC0(slice_size, PARTITION_END_ALIGNMENT);

	vtoc->efi_parts[0].p_start = start_block;
	vtoc->efi_parts[0].p_size = slice_size;

	/*
	 * Why we use V_USR: V_BACKUP confuses users, and is considered
	 * disposable by some EFI utilities (since EFI doesn't have a backup
	 * slice).  V_UNASSIGNED is supposed to be used only for zero size
	 * partitions, and efi_write() will fail if we use it.  V_ROOT, V_BOOT,
	 * etc. were all pretty specific.  V_USR is as close to reality as we
	 * can get, in the absence of V_OTHER.
	 */
	vtoc->efi_parts[0].p_tag = V_USR;
	FUNC20(vtoc->efi_parts[0].p_name, EFI_PART_NAME_LEN);

	vtoc->efi_parts[8].p_start = slice_size + start_block;
	vtoc->efi_parts[8].p_size = resv;
	vtoc->efi_parts[8].p_tag = V_RESERVED;

	rval = FUNC6(fd, vtoc);

	/* Flush the buffers to disk and invalidate the page cache. */
	(void) FUNC8(fd);
	(void) FUNC9(fd, BLKFLSBUF);

	if (rval == 0)
		rval = FUNC5(fd);

	/*
	 * Some block drivers (like pcata) may not support EFI GPT labels.
	 * Print out a helpful error message directing the user to manually
	 * label the disk and give a specific slice.
	 */
	if (rval != 0) {
		(void) FUNC1(fd);
		FUNC4(vtoc);

		FUNC17(hdl, FUNC2(TEXT_DOMAIN, "try using "
		    "parted(8) and then provide a specific slice: %d"), rval);
		return (FUNC16(hdl, EZFS_LABELFAILED, errbuf));
	}

	(void) FUNC1(fd);
	FUNC4(vtoc);

	(void) FUNC13(path, sizeof (path), "%s/%s", DISK_ROOT, name);
	(void) FUNC15(path, MAXPATHLEN);

	/* Wait to udev to signal use the device has settled. */
	rval = FUNC19(path, DISK_LABEL_WAIT);
	if (rval) {
		FUNC17(hdl, FUNC2(TEXT_DOMAIN, "failed to "
		    "detect device partitions on '%s': %d"), path, rval);
		return (FUNC16(hdl, EZFS_LABELFAILED, errbuf));
	}

	/* We can't be to paranoid.  Read the label back and verify it. */
	(void) FUNC13(path, sizeof (path), "%s/%s", DISK_ROOT, name);
	rval = FUNC18(path);
	if (rval) {
		FUNC17(hdl, FUNC2(TEXT_DOMAIN, "freshly written "
		    "EFI label on '%s' is damaged.  Ensure\nthis device "
		    "is not in use, and is functioning properly: %d"),
		    path, rval);
		return (FUNC16(hdl, EZFS_LABELFAILED, errbuf));
	}
	return (0);
}