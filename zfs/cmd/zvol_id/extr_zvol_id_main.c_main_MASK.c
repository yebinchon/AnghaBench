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
struct stat64 {int /*<<< orphan*/  st_rdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int ZVOL_MINORS ; 
 int FUNC0 (char**,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (char) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char*,struct stat64*) ; 
 char* FUNC9 (int) ; 
 int FUNC10 (char*) ; 

int
FUNC11(int argc, char **argv)
{
	int fd, error = 0;
	char zvol_name[ZFS_MAX_DATASET_NAME_LEN];
	char *zvol_name_part = NULL;
	char *dev_name;
	struct stat64 statbuf;
	int dev_minor, dev_part;
	int i;
	int rc;

	if (argc < 2) {
		FUNC7("Usage: %s /dev/zvol_device_node\n", argv[0]);
		return (EINVAL);
	}

	dev_name = argv[1];
	error = FUNC8(dev_name, &statbuf);
	if (error != 0) {
		FUNC7("Unable to access device file: %s\n", dev_name);
		return (errno);
	}

	dev_minor = FUNC5(statbuf.st_rdev);
	dev_part = dev_minor % ZVOL_MINORS;

	fd = FUNC6(dev_name, O_RDONLY);
	if (fd < 0) {
		FUNC7("Unable to open device file: %s\n", dev_name);
		return (errno);
	}

	error = FUNC3(zvol_name, fd);
	if (error < 0) {
		FUNC7("ioctl_get_msg failed:%s\n", FUNC9(errno));
		return (errno);
	}
	if (dev_part > 0)
		rc = FUNC0(&zvol_name_part, "%s-part%d", zvol_name,
		    dev_part);
	else
		rc = FUNC0(&zvol_name_part, "%s", zvol_name);

	if (rc == -1 || zvol_name_part == NULL)
		goto error;

	for (i = 0; i < FUNC10(zvol_name_part); i++) {
		if (FUNC4(zvol_name_part[i]))
			zvol_name_part[i] = '+';
	}

	FUNC7("%s\n", zvol_name_part);
	FUNC2(zvol_name_part);
error:
	FUNC1(fd);
	return (error);
}