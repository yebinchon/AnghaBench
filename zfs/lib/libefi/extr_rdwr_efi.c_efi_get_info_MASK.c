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
struct dk_cinfo {int /*<<< orphan*/  dki_partition; void* dki_ctype; scalar_t__ dki_cname; scalar_t__ dki_dname; } ;

/* Variables and functions */
 void* DKC_DIRECT ; 
 void* DKC_MD ; 
 void* DKC_PCMCIA_MEM ; 
 void* DKC_SCSI_CCS ; 
 void* DKC_UNKNOWN ; 
 void* DKC_VBD ; 
#define  EINVAL 129 
#define  EIO 128 
 int /*<<< orphan*/  PATH_MAX ; 
 int VT_EINVAL ; 
 int VT_EIO ; 
 int VT_ERROR ; 
 char* FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ efi_debug ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct dk_cinfo*,int /*<<< orphan*/ ,int) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int FUNC6 (char*,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*) ; 
 size_t FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC10(int fd, struct dk_cinfo *dki_info)
{
	char *path;
	char *dev_path;
	int rval = 0;

	FUNC3(dki_info, 0, sizeof (*dki_info));

	path = FUNC0(1, PATH_MAX);
	if (path == NULL)
		goto error;

	/*
	 * The simplest way to get the partition number under linux is
	 * to parse it out of the /dev/<disk><partition> block device name.
	 * The kernel creates this using the partition number when it
	 * populates /dev/ so it may be trusted.  The tricky bit here is
	 * that the naming convention is based on the block device type.
	 * So we need to take this in to account when parsing out the
	 * partition information.  Another issue is that the libefi API
	 * API only provides the open fd and not the file path.  To handle
	 * this realpath(3) is used to resolve the block device name from
	 * /proc/self/fd/<fd>.  Aside from the partition number we collect
	 * some additional device info.
	 */
	(void) FUNC5(path, "/proc/self/fd/%d", fd);
	dev_path = FUNC4(path, NULL);
	FUNC2(path);

	if (dev_path == NULL)
		goto error;

	if ((FUNC9(dev_path, "/dev/sd", 7) == 0)) {
		FUNC7(dki_info->dki_cname, "sd");
		dki_info->dki_ctype = DKC_SCSI_CCS;
		rval = FUNC6(dev_path, "/dev/%[a-zA-Z]%hu",
		    dki_info->dki_dname,
		    &dki_info->dki_partition);
	} else if ((FUNC9(dev_path, "/dev/hd", 7) == 0)) {
		FUNC7(dki_info->dki_cname, "hd");
		dki_info->dki_ctype = DKC_DIRECT;
		rval = FUNC6(dev_path, "/dev/%[a-zA-Z]%hu",
		    dki_info->dki_dname,
		    &dki_info->dki_partition);
	} else if ((FUNC9(dev_path, "/dev/md", 7) == 0)) {
		FUNC7(dki_info->dki_cname, "pseudo");
		dki_info->dki_ctype = DKC_MD;
		FUNC7(dki_info->dki_dname, "md");
		rval = FUNC6(dev_path, "/dev/md%[0-9]p%hu",
		    dki_info->dki_dname + 2,
		    &dki_info->dki_partition);
	} else if ((FUNC9(dev_path, "/dev/vd", 7) == 0)) {
		FUNC7(dki_info->dki_cname, "vd");
		dki_info->dki_ctype = DKC_MD;
		rval = FUNC6(dev_path, "/dev/%[a-zA-Z]%hu",
		    dki_info->dki_dname,
		    &dki_info->dki_partition);
	} else if ((FUNC9(dev_path, "/dev/xvd", 8) == 0)) {
		FUNC7(dki_info->dki_cname, "xvd");
		dki_info->dki_ctype = DKC_MD;
		rval = FUNC6(dev_path, "/dev/%[a-zA-Z]%hu",
		    dki_info->dki_dname,
		    &dki_info->dki_partition);
	} else if ((FUNC9(dev_path, "/dev/zd", 7) == 0)) {
		FUNC7(dki_info->dki_cname, "zd");
		dki_info->dki_ctype = DKC_MD;
		FUNC7(dki_info->dki_dname, "zd");
		rval = FUNC6(dev_path, "/dev/zd%[0-9]p%hu",
		    dki_info->dki_dname + 2,
		    &dki_info->dki_partition);
	} else if ((FUNC9(dev_path, "/dev/dm-", 8) == 0)) {
		FUNC7(dki_info->dki_cname, "pseudo");
		dki_info->dki_ctype = DKC_VBD;
		FUNC7(dki_info->dki_dname, "dm-");
		rval = FUNC6(dev_path, "/dev/dm-%[0-9]p%hu",
		    dki_info->dki_dname + 3,
		    &dki_info->dki_partition);
	} else if ((FUNC9(dev_path, "/dev/ram", 8) == 0)) {
		FUNC7(dki_info->dki_cname, "pseudo");
		dki_info->dki_ctype = DKC_PCMCIA_MEM;
		FUNC7(dki_info->dki_dname, "ram");
		rval = FUNC6(dev_path, "/dev/ram%[0-9]p%hu",
		    dki_info->dki_dname + 3,
		    &dki_info->dki_partition);
	} else if ((FUNC9(dev_path, "/dev/loop", 9) == 0)) {
		FUNC7(dki_info->dki_cname, "pseudo");
		dki_info->dki_ctype = DKC_VBD;
		FUNC7(dki_info->dki_dname, "loop");
		rval = FUNC6(dev_path, "/dev/loop%[0-9]p%hu",
		    dki_info->dki_dname + 4,
		    &dki_info->dki_partition);
	} else if ((FUNC9(dev_path, "/dev/nvme", 9) == 0)) {
		FUNC7(dki_info->dki_cname, "nvme");
		dki_info->dki_ctype = DKC_SCSI_CCS;
		FUNC7(dki_info->dki_dname, "nvme");
		(void) FUNC6(dev_path, "/dev/nvme%[0-9]",
		    dki_info->dki_dname + 4);
		size_t controller_length = FUNC8(
		    dki_info->dki_dname);
		FUNC7(dki_info->dki_dname + controller_length,
		    "n");
		rval = FUNC6(dev_path,
		    "/dev/nvme%*[0-9]n%[0-9]p%hu",
		    dki_info->dki_dname + controller_length + 1,
		    &dki_info->dki_partition);
	} else {
		FUNC7(dki_info->dki_dname, "unknown");
		FUNC7(dki_info->dki_cname, "unknown");
		dki_info->dki_ctype = DKC_UNKNOWN;
	}

	switch (rval) {
	case 0:
		errno = EINVAL;
		goto error;
	case 1:
		dki_info->dki_partition = 0;
	}

	FUNC2(dev_path);

	return (0);
error:
	if (efi_debug)
		(void) FUNC1(stderr, "DKIOCINFO errno 0x%x\n", errno);

	switch (errno) {
	case EIO:
		return (VT_EIO);
	case EINVAL:
		return (VT_EINVAL);
	default:
		return (VT_ERROR);
	}
}