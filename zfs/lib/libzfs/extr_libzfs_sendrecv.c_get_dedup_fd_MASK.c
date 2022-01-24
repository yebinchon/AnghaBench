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
struct TYPE_6__ {int /*<<< orphan*/  zfs_hdl; int /*<<< orphan*/  zfs_name; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  errbuf ;
struct TYPE_7__ {int outputfd; int inputfd; int /*<<< orphan*/  dedup_hdl; } ;
typedef  TYPE_2__ dedup_arg_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  EZFS_PIPEFAILED ; 
 int /*<<< orphan*/  EZFS_THREADCREATEFAILED ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  cksummer ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int errno ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(zfs_handle_t *zhp, dedup_arg_t *dda, int fd, pthread_t *tid,
    int *outfd)
{
	int pipefd[2];
	char errbuf[1024];
	int err;
	(void) FUNC3(errbuf, sizeof (errbuf), FUNC1(TEXT_DOMAIN,
	    "warning: cannot send '%s'"), zhp->zfs_name);
	if ((err = FUNC4(AF_UNIX, SOCK_STREAM, 0, pipefd)) != 0) {
		FUNC7(zhp->zfs_hdl, FUNC5(errno));
		return (FUNC6(zhp->zfs_hdl, EZFS_PIPEFAILED,
		    errbuf));
	}
	dda->outputfd = fd;
	dda->inputfd = pipefd[1];
	dda->dedup_hdl = zhp->zfs_hdl;
	if ((err = FUNC2(tid, NULL, cksummer, dda)) != 0) {
		(void) FUNC0(pipefd[0]);
		(void) FUNC0(pipefd[1]);
		FUNC7(zhp->zfs_hdl, FUNC5(err));
		return (FUNC6(zhp->zfs_hdl, EZFS_THREADCREATEFAILED,
		    errbuf));
	}
	*outfd = pipefd[0];
	return (0);
}