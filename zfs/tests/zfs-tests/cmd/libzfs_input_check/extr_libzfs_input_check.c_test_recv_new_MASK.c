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
typedef  int /*<<< orphan*/  uchar_t ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  snapshot ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  drr ;
struct TYPE_3__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ dmu_replay_record_t ;

/* Variables and functions */
 int /*<<< orphan*/  EBADE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAXNAMELEN ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  ZFS_DEV ; 
 int /*<<< orphan*/  ZFS_IOC_RECV_NEW ; 
 int /*<<< orphan*/ * action_handle ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* origin ; 
 int FUNC12 (int,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * recvdprops ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(const char *dataset, int fd)
{
	dmu_replay_record_t drr = { 0 };
	nvlist_t *required = FUNC8();
	nvlist_t *optional = FUNC8();
	nvlist_t *props = FUNC8();
	char snapshot[MAXNAMELEN + 32];
	ssize_t count;

	int cleanup_fd = FUNC11(ZFS_DEV, O_RDWR);

	(void) FUNC13(snapshot, sizeof (snapshot), "%s@replicant", dataset);

	count = FUNC12(fd, &drr, sizeof (drr), 0);
	if (count != sizeof (drr)) {
		(void) FUNC9(stderr, "could not read stream: %s\n",
		    FUNC14(errno));
	}

	FUNC6(required, "snapname", snapshot);
	FUNC3(required, "begin_record", (uchar_t *)&drr,
	    sizeof (drr));
	FUNC4(required, "input_fd", fd);

	FUNC6(props, "org.openzfs:launch", "September 17th, 2013");
	FUNC5(optional, "localprops", props);
	FUNC2(optional, "force");
	FUNC4(optional, "cleanup_fd", cleanup_fd);

	/*
	 * TODO - Resumable receive is harder to set up. So we currently
	 * ignore testing for one.
	 */
#if 0
	fnvlist_add_nvlist(optional, "props", recvdprops);
	fnvlist_add_string(optional, "origin", origin);
	fnvlist_add_boolean(optional, "resumable");
	fnvlist_add_uint64(optional, "action_handle", *action_handle);
#endif
	FUNC0(ZFS_IOC_RECV_NEW, dataset, required, optional, EBADE);

	FUNC10(props);
	FUNC10(optional);
	FUNC10(required);

	(void) FUNC1(cleanup_fd);
}