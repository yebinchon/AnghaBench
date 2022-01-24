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
typedef  int /*<<< orphan*/  zfs_share_type_t ;
typedef  size_t zfs_share_proto_t ;
struct TYPE_4__ {int /*<<< orphan*/ * libzfs_sharetab; } ;
typedef  TYPE_1__ libzfs_handle_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_5__ {char const* p_name; } ;

/* Variables and functions */
 int MAXPATHLEN ; 
#define  PROTO_NFS 129 
#define  PROTO_SMB 128 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  SHARED_NFS ; 
 int /*<<< orphan*/  SHARED_NOT_SHARED ; 
 int /*<<< orphan*/  SHARED_SMB ; 
 int /*<<< orphan*/  ZFS_SHARETAB ; 
 int /*<<< orphan*/ * FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* proto_table ; 
 char* FUNC3 (char*,char) ; 
 scalar_t__ FUNC4 (char*,char const*) ; 

zfs_share_type_t
FUNC5(libzfs_handle_t *hdl, const char *mountpoint,
    zfs_share_proto_t proto)
{
	char buf[MAXPATHLEN], *tab;
	char *ptr;

	if (hdl->libzfs_sharetab == NULL)
		return (SHARED_NOT_SHARED);

	/* Reopen ZFS_SHARETAB to prevent reading stale data from open file */
	if (FUNC1(ZFS_SHARETAB, "r", hdl->libzfs_sharetab) == NULL)
		return (SHARED_NOT_SHARED);

	(void) FUNC2(hdl->libzfs_sharetab, 0, SEEK_SET);

	while (FUNC0(buf, sizeof (buf), hdl->libzfs_sharetab) != NULL) {

		/* the mountpoint is the first entry on each line */
		if ((tab = FUNC3(buf, '\t')) == NULL)
			continue;

		*tab = '\0';
		if (FUNC4(buf, mountpoint) == 0) {
			/*
			 * the protocol field is the third field
			 * skip over second field
			 */
			ptr = ++tab;
			if ((tab = FUNC3(ptr, '\t')) == NULL)
				continue;
			ptr = ++tab;
			if ((tab = FUNC3(ptr, '\t')) == NULL)
				continue;
			*tab = '\0';
			if (FUNC4(ptr,
			    proto_table[proto].p_name) == 0) {
				switch (proto) {
				case PROTO_NFS:
					return (SHARED_NFS);
				case PROTO_SMB:
					return (SHARED_SMB);
				default:
					return (0);
				}
			}
		}
	}

	return (SHARED_NOT_SHARED);
}