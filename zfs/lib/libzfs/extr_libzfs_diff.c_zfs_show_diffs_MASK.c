#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct TYPE_11__ {char* member_0; int zc_cookie; int /*<<< orphan*/  zc_name; int /*<<< orphan*/  zc_value; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  errbuf ;
struct TYPE_12__ {int scripted; int classify; int timestamped; int outputfd; int datafd; scalar_t__ zerr; char* errbuf; int /*<<< orphan*/  tosnap; int /*<<< orphan*/  fromsnap; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ differ_info_t ;

/* Variables and functions */
 scalar_t__ EPERM ; 
 scalar_t__ EPIPE ; 
 scalar_t__ EXDEV ; 
 int /*<<< orphan*/  EZFS_DIFF ; 
 int /*<<< orphan*/  EZFS_DIFFDATA ; 
 int /*<<< orphan*/  EZFS_PIPEFAILED ; 
 int /*<<< orphan*/  EZFS_THREADCREATEFAILED ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int ZFS_DIFF_CLASSIFY ; 
 int ZFS_DIFF_PARSEABLE ; 
 int ZFS_DIFF_TIMESTAMP ; 
 int /*<<< orphan*/  ZFS_IOC_DIFF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  differ ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_1__*,char const*,char const*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*) ; 
 char* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 

int
FUNC15(zfs_handle_t *zhp, int outfd, const char *fromsnap,
    const char *tosnap, int flags)
{
	zfs_cmd_t zc = {"\0"};
	char errbuf[1024];
	differ_info_t di = { 0 };
	pthread_t tid;
	int pipefd[2];
	int iocerr;

	(void) FUNC7(errbuf, sizeof (errbuf),
	    FUNC1(TEXT_DOMAIN, "zfs diff failed"));

	if (FUNC6(zhp, fromsnap, tosnap, &di)) {
		FUNC11(&di);
		return (-1);
	}

	if (FUNC2(pipefd)) {
		FUNC13(zhp->zfs_hdl, FUNC8(errno));
		FUNC11(&di);
		return (FUNC12(zhp->zfs_hdl, EZFS_PIPEFAILED, errbuf));
	}

	di.scripted = (flags & ZFS_DIFF_PARSEABLE);
	di.classify = (flags & ZFS_DIFF_CLASSIFY);
	di.timestamped = (flags & ZFS_DIFF_TIMESTAMP);

	di.outputfd = outfd;
	di.datafd = pipefd[0];

	if (FUNC4(&tid, NULL, differ, &di)) {
		FUNC13(zhp->zfs_hdl, FUNC8(errno));
		(void) FUNC0(pipefd[0]);
		(void) FUNC0(pipefd[1]);
		FUNC11(&di);
		return (FUNC12(zhp->zfs_hdl,
		    EZFS_THREADCREATEFAILED, errbuf));
	}

	/* do the ioctl() */
	(void) FUNC9(zc.zc_value, di.fromsnap, FUNC10(di.fromsnap) + 1);
	(void) FUNC9(zc.zc_name, di.tosnap, FUNC10(di.tosnap) + 1);
	zc.zc_cookie = pipefd[1];

	iocerr = FUNC14(zhp->zfs_hdl, ZFS_IOC_DIFF, &zc);
	if (iocerr != 0) {
		(void) FUNC7(errbuf, sizeof (errbuf),
		    FUNC1(TEXT_DOMAIN, "Unable to obtain diffs"));
		if (errno == EPERM) {
			FUNC13(zhp->zfs_hdl, FUNC1(TEXT_DOMAIN,
			    "\n   The sys_mount privilege or diff delegated "
			    "permission is needed\n   to execute the "
			    "diff ioctl"));
		} else if (errno == EXDEV) {
			FUNC13(zhp->zfs_hdl, FUNC1(TEXT_DOMAIN,
			    "\n   Not an earlier snapshot from the same fs"));
		} else if (errno != EPIPE || di.zerr == 0) {
			FUNC13(zhp->zfs_hdl, FUNC8(errno));
		}
		(void) FUNC0(pipefd[1]);
		(void) FUNC3(tid);
		(void) FUNC5(tid, NULL);
		FUNC11(&di);
		if (di.zerr != 0 && di.zerr != EPIPE) {
			FUNC13(zhp->zfs_hdl, FUNC8(di.zerr));
			return (FUNC12(zhp->zfs_hdl, EZFS_DIFF, di.errbuf));
		} else {
			return (FUNC12(zhp->zfs_hdl, EZFS_DIFFDATA, errbuf));
		}
	}

	(void) FUNC0(pipefd[1]);
	(void) FUNC5(tid, NULL);

	if (di.zerr != 0) {
		FUNC13(zhp->zfs_hdl, FUNC8(di.zerr));
		return (FUNC12(zhp->zfs_hdl, EZFS_DIFF, di.errbuf));
	}
	FUNC11(&di);
	return (0);
}