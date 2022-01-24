#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_ioc_t ;
struct TYPE_3__ {char* member_0; char* zc_name; size_t zc_nvlist_src_size; void* zc_nvlist_dst; int /*<<< orphan*/  zc_nvlist_dst_size; void* zc_nvlist_src; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  void* uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (size_t,int) ; 
#define  ZFS_ERR_IOC_ARG_BADTYPE 130 
#define  ZFS_ERR_IOC_ARG_REQUIRED 129 
#define  ZFS_ERR_IOC_ARG_UNAVAIL 128 
 char* active_test ; 
 int errno ; 
 char* FUNC1 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 
 int /*<<< orphan*/  unexpected_failures ; 
 int /*<<< orphan*/  zfs_fd ; 

__attribute__((used)) static void
FUNC8(zfs_ioc_t ioc, const char *name, nvlist_t *innvl, int expected)
{
	zfs_cmd_t zc = {"\0"};
	char *packed = NULL;
	const char *variant;
	size_t size = 0;
	int error = 0;

	switch (expected) {
	case ZFS_ERR_IOC_ARG_UNAVAIL:
		variant = "unsupported input";
		break;
	case ZFS_ERR_IOC_ARG_REQUIRED:
		variant = "missing input";
		break;
	case ZFS_ERR_IOC_ARG_BADTYPE:
		variant = "invalid input type";
		break;
	default:
		variant = "valid input";
		break;
	}

	packed = FUNC1(innvl, &size);
	(void) FUNC7(zc.zc_name, name, sizeof (zc.zc_name));
	zc.zc_name[sizeof (zc.zc_name) - 1] = '\0';
	zc.zc_nvlist_src = (uint64_t)(uintptr_t)packed;
	zc.zc_nvlist_src_size = size;
	zc.zc_nvlist_dst_size = FUNC0(size * 2, 128 * 1024);
	zc.zc_nvlist_dst = (uint64_t)(uintptr_t)FUNC6(zc.zc_nvlist_dst_size);

	if (FUNC5(zfs_fd, ioc, &zc) != 0)
		error = errno;

	if (error != expected) {
		unexpected_failures = B_TRUE;
		(void) FUNC3(stderr, "%s: Unexpected result with %s, "
		    "error %d (expecting %d)\n",
		    active_test, variant, error, expected);
	}

	FUNC2(packed, size);
	FUNC4((void *)(uintptr_t)zc.zc_nvlist_dst);
}