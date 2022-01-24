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
typedef  int uint_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uchar_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dmu_replay_record_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 char* ZPOOL_HIDDEN_ARGS ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,int*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,int*) ; 
 int FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int FUNC11 (int /*<<< orphan*/ *,char*,char**) ; 
 int FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 char* FUNC13 (char*,char) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int FUNC15 (char*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC16(const char *fsname, nvlist_t *innvl, nvlist_t *outnvl)
{
	dmu_replay_record_t *begin_record;
	uint_t begin_record_size;
	nvlist_t *errors = NULL;
	nvlist_t *recvprops = NULL;
	nvlist_t *localprops = NULL;
	nvlist_t *hidden_args = NULL;
	char *snapname;
	char *origin = NULL;
	char *tosnap;
	char tofs[ZFS_MAX_DATASET_NAME_LEN];
	boolean_t force;
	boolean_t resumable;
	uint64_t action_handle = 0;
	uint64_t read_bytes = 0;
	uint64_t errflags = 0;
	int input_fd = -1;
	int cleanup_fd = -1;
	int error;

	snapname = FUNC5(innvl, "snapname");

	if (FUNC1(snapname, NULL, NULL) != 0 ||
	    FUNC13(snapname, '@') == NULL ||
	    FUNC13(snapname, '%'))
		return (FUNC0(EINVAL));

	(void) FUNC14(tofs, snapname);
	tosnap = FUNC13(tofs, '@');
	*tosnap++ = '\0';

	error = FUNC11(innvl, "origin", &origin);
	if (error && error != ENOENT)
		return (error);

	error = FUNC8(innvl, "begin_record",
	    (uchar_t **)&begin_record, &begin_record_size);
	if (error != 0 || begin_record_size != sizeof (*begin_record))
		return (FUNC0(EINVAL));

	input_fd = FUNC4(innvl, "input_fd");

	force = FUNC6(innvl, "force");
	resumable = FUNC6(innvl, "resumable");

	error = FUNC9(innvl, "cleanup_fd", &cleanup_fd);
	if (error && error != ENOENT)
		return (error);

	error = FUNC12(innvl, "action_handle", &action_handle);
	if (error && error != ENOENT)
		return (error);

	/* we still use "props" here for backwards compatibility */
	error = FUNC10(innvl, "props", &recvprops);
	if (error && error != ENOENT)
		return (error);

	error = FUNC10(innvl, "localprops", &localprops);
	if (error && error != ENOENT)
		return (error);

	error = FUNC10(innvl, ZPOOL_HIDDEN_ARGS, &hidden_args);
	if (error && error != ENOENT)
		return (error);

	error = FUNC15(tofs, tosnap, origin, recvprops, localprops,
	    hidden_args, force, resumable, input_fd, begin_record, cleanup_fd,
	    &read_bytes, &errflags, &action_handle, &errors);

	FUNC3(outnvl, "read_bytes", read_bytes);
	FUNC3(outnvl, "error_flags", errflags);
	FUNC3(outnvl, "action_handle", action_handle);
	FUNC2(outnvl, "errors", errors);

	FUNC7(errors);
	FUNC7(recvprops);
	FUNC7(localprops);

	return (error);
}