#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ zfs_type; int /*<<< orphan*/  zfs_name; int /*<<< orphan*/ * zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct TYPE_7__ {char* member_0; int zc_cookie; int zc_flags; int /*<<< orphan*/  zc_value; int /*<<< orphan*/  zc_name; scalar_t__ zc_fromobj; int /*<<< orphan*/  zc_sendobj; scalar_t__ zc_obj; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  enum lzc_send_flags { ____Placeholder_lzc_send_flags } lzc_send_flags ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
#define  EACCES 141 
#define  EDQUOT 140 
#define  EFAULT 139 
#define  EFBIG 138 
#define  EIO 137 
#define  ENOENT 136 
#define  ENOLINK 135 
#define  ENOSPC 134 
#define  ENOSTR 133 
#define  ENXIO 132 
#define  EPIPE 131 
#define  ERANGE 130 
#define  EROFS 129 
#define  EXDEV 128 
 int /*<<< orphan*/  EZFS_BADBACKUP ; 
 int /*<<< orphan*/  EZFS_CROSSTARGET ; 
 int /*<<< orphan*/  EZFS_CRYPTOFAILED ; 
 int /*<<< orphan*/  EZFS_NOENT ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ZFS_IOC_SEND ; 
 int /*<<< orphan*/  ZFS_PROP_OBJSETID ; 
 scalar_t__ ZFS_TYPE_SNAPSHOT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int errno ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int /*<<< orphan*/ ) ; 
 char* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static int
FUNC17(zfs_handle_t *zhp, const char *fromsnap, uint64_t fromsnap_obj,
    boolean_t fromorigin, int outfd, enum lzc_send_flags flags,
    nvlist_t *debugnv)
{
	zfs_cmd_t zc = {"\0"};
	libzfs_handle_t *hdl = zhp->zfs_hdl;
	nvlist_t *thisdbg;

	FUNC1(zhp->zfs_type == ZFS_TYPE_SNAPSHOT);
	FUNC1(fromsnap_obj == 0 || !fromorigin);

	(void) FUNC10(zc.zc_name, zhp->zfs_name, sizeof (zc.zc_name));
	zc.zc_cookie = outfd;
	zc.zc_obj = fromorigin;
	zc.zc_sendobj = FUNC15(zhp, ZFS_PROP_OBJSETID);
	zc.zc_fromobj = fromsnap_obj;
	zc.zc_flags = flags;

	FUNC0(0 == FUNC6(&thisdbg, NV_UNIQUE_NAME, 0));
	if (fromsnap && fromsnap[0] != '\0') {
		FUNC0(0 == FUNC4(thisdbg,
		    "fromsnap", fromsnap));
	}

	if (FUNC14(zhp->zfs_hdl, ZFS_IOC_SEND, &zc) != 0) {
		char errbuf[1024];
		(void) FUNC8(errbuf, sizeof (errbuf), FUNC2(TEXT_DOMAIN,
		    "warning: cannot send '%s'"), zhp->zfs_name);

		FUNC0(0 == FUNC5(thisdbg, "error", errno));
		if (debugnv) {
			FUNC0(0 == FUNC3(debugnv,
			    zhp->zfs_name, thisdbg));
		}
		FUNC7(thisdbg);

		switch (errno) {
		case EXDEV:
			FUNC13(hdl, FUNC2(TEXT_DOMAIN,
			    "not an earlier snapshot from the same fs"));
			return (FUNC12(hdl, EZFS_CROSSTARGET, errbuf));

		case EACCES:
			FUNC13(hdl, FUNC2(TEXT_DOMAIN,
			    "source key must be loaded"));
			return (FUNC12(hdl, EZFS_CRYPTOFAILED, errbuf));

		case ENOENT:
			if (FUNC11(hdl, zc.zc_name,
			    ZFS_TYPE_SNAPSHOT)) {
				FUNC13(hdl, FUNC2(TEXT_DOMAIN,
				    "incremental source (@%s) does not exist"),
				    zc.zc_value);
			}
			return (FUNC12(hdl, EZFS_NOENT, errbuf));

		case EDQUOT:
		case EFBIG:
		case EIO:
		case ENOLINK:
		case ENOSPC:
		case ENOSTR:
		case ENXIO:
		case EPIPE:
		case ERANGE:
		case EFAULT:
		case EROFS:
			FUNC13(hdl, FUNC9(errno));
			return (FUNC12(hdl, EZFS_BADBACKUP, errbuf));

		default:
			return (FUNC16(hdl, errno, errbuf));
		}
	}

	if (debugnv)
		FUNC0(0 == FUNC3(debugnv, zhp->zfs_name, thisdbg));
	FUNC7(thisdbg);

	return (0);
}