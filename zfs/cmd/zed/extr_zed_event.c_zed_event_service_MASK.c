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
typedef  int /*<<< orphan*/  zed_strings_t ;
typedef  int uint_t ;
typedef  int uint64_t ;
struct zed_conf {char const* zedlet_dir; int /*<<< orphan*/  zevent_fd; int /*<<< orphan*/  zedlets; int /*<<< orphan*/  path; int /*<<< orphan*/  zfs_hdl; } ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  ZED_VAR_PREFIX ; 
 int /*<<< orphan*/  ZEVENT_NONE ; 
 int /*<<< orphan*/  ZEVENT_VAR_PREFIX ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,...) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,int*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*,char**) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct zed_conf*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC20(struct zed_conf *zcp)
{
	nvlist_t *nvl;
	nvpair_t *nvp;
	int n_dropped;
	zed_strings_t *zsp;
	uint64_t eid;
	int64_t *etime;
	uint_t nelem;
	char *class;
	const char *subclass;
	int rv;

	if (!zcp) {
		errno = EINVAL;
		FUNC15(LOG_ERR, "Failed to service zevent: %s",
		    FUNC12(errno));
		return;
	}
	rv = FUNC19(zcp->zfs_hdl, &nvl, &n_dropped, ZEVENT_NONE,
	    zcp->zevent_fd);

	if ((rv != 0) || !nvl)
		return;

	if (n_dropped > 0) {
		FUNC15(LOG_WARNING, "Missed %d events", n_dropped);
		/*
		 * FIXME: Increase max size of event nvlist in
		 * /sys/module/zfs/parameters/zfs_zevent_len_max ?
		 */
	}
	if (FUNC10(nvl, "eid", &eid) != 0) {
		FUNC15(LOG_WARNING, "Failed to lookup zevent eid");
	} else if (FUNC8(
	    nvl, "time", &etime, &nelem) != 0) {
		FUNC15(LOG_WARNING,
		    "Failed to lookup zevent time (eid=%llu)", eid);
	} else if (nelem != 2) {
		FUNC15(LOG_WARNING,
		    "Failed to lookup zevent time (eid=%llu, nelem=%u)",
		    eid, nelem);
	} else if (FUNC9(nvl, "class", &class) != 0) {
		FUNC15(LOG_WARNING,
		    "Failed to lookup zevent class (eid=%llu)", eid);
	} else {
		/* let internal modules see this event first */
		FUNC18(class, NULL, nvl);

		zsp = FUNC16();

		nvp = NULL;
		while ((nvp = FUNC11(nvl, nvp)))
			FUNC2(eid, zsp, nvp);

		FUNC1(eid, zsp, zcp->path);
		FUNC0(eid, zsp);

		FUNC4(eid, zsp, ZED_VAR_PREFIX, "PID",
		    "%d", (int)FUNC6());
		FUNC4(eid, zsp, ZED_VAR_PREFIX, "ZEDLET_DIR",
		    "%s", zcp->zedlet_dir);
		subclass = FUNC5(class);
		FUNC4(eid, zsp, ZEVENT_VAR_PREFIX, "SUBCLASS",
		    "%s", (subclass ? subclass : class));

		FUNC3(eid, zsp, etime);

		FUNC14(eid, class, subclass,
		    zcp->zedlet_dir, zcp->zedlets, zsp, zcp->zevent_fd);

		FUNC13(zcp, eid, etime);

		FUNC17(zsp);
	}
	FUNC7(nvl);
}