#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  zfs_name; int /*<<< orphan*/  zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_9__ {int /*<<< orphan*/  parsable; scalar_t__ progress; int /*<<< orphan*/  verbosity; scalar_t__ dryrun; } ;
typedef  TYPE_2__ sendflags_t ;
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_10__ {int pa_fd; int /*<<< orphan*/  pa_verbosity; int /*<<< orphan*/  pa_estimate; int /*<<< orphan*/  pa_parsable; TYPE_1__* pa_zhp; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ progress_arg_t ;
typedef  char* longlong_t ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  EZFS_BADBACKUP ; 
 int /*<<< orphan*/  EZFS_THREADCREATEFAILED ; 
 void* PTHREAD_CANCELED ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,char const*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  send_progress_thread ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,char*,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static int
FUNC14(zfs_handle_t *zhp, const char *from, int fd, sendflags_t *flags,
    uint64_t resumeobj, uint64_t resumeoff, uint64_t bytes,
    const char *redactbook, char *errbuf)
{
	uint64_t size;
	FILE *fout = flags->dryrun ? stdout : stderr;
	progress_arg_t pa = { 0 };
	int err = 0;
	pthread_t ptid;

	if (flags->progress) {
		pa.pa_zhp = zhp;
		pa.pa_fd = fd;
		pa.pa_parsable = flags->parsable;
		pa.pa_estimate = B_TRUE;
		pa.pa_verbosity = flags->verbosity;

		err = FUNC5(&ptid, NULL,
		    send_progress_thread, &pa);
		if (err != 0) {
			FUNC11(zhp->zfs_hdl, FUNC9(errno));
			return (FUNC10(zhp->zfs_hdl,
			    EZFS_THREADCREATEFAILED, errbuf));
		}
	}

	err = FUNC3(zhp->zfs_name, from,
	    FUNC2(flags), resumeobj, resumeoff, bytes,
	    redactbook, fd, &size);

	if (flags->progress) {
		void *status = NULL;
		(void) FUNC4(ptid);
		(void) FUNC6(ptid, &status);
		int error = (int)(uintptr_t)status;
		if (error != 0 && status != PTHREAD_CANCELED) {
			char errbuf[1024];
			(void) FUNC8(errbuf, sizeof (errbuf),
			    FUNC0(TEXT_DOMAIN, "progress thread exited "
			    "nonzero"));
			return (FUNC13(zhp->zfs_hdl, error,
			    errbuf));
		}
	}

	if (err != 0) {
		FUNC11(zhp->zfs_hdl, FUNC9(err));
		return (FUNC10(zhp->zfs_hdl, EZFS_BADBACKUP,
		    errbuf));
	}
	FUNC7(fout, zhp->zfs_name, from, size,
	    flags->parsable);

	if (flags->parsable) {
		(void) FUNC1(fout, "size\t%llu\n", (longlong_t)size);
	} else {
		char buf[16];
		FUNC12(size, buf, sizeof (buf));
		(void) FUNC1(fout, FUNC0(TEXT_DOMAIN,
		    "total estimated size is %s\n"), buf);
	}
	return (0);
}