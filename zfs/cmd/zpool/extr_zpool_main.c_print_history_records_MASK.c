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
typedef  int uint_t ;
typedef  void* uid_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  void* time_t ;
typedef  int /*<<< orphan*/  tbuf ;
struct tm {int dummy; } ;
struct passwd {char* pw_name; } ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  longlong_t ;
struct TYPE_3__ {int /*<<< orphan*/  longfmt; int /*<<< orphan*/  internal; } ;
typedef  TYPE_1__ hist_cbdata_t ;

/* Variables and functions */
 int ZFS_NUM_LEGACY_HISTORY_EVENTS ; 
 int /*<<< orphan*/  ZPOOL_HIST_CMD ; 
 int /*<<< orphan*/  ZPOOL_HIST_DSID ; 
 int /*<<< orphan*/  ZPOOL_HIST_DSNAME ; 
 int /*<<< orphan*/  ZPOOL_HIST_ERRNO ; 
 int /*<<< orphan*/  ZPOOL_HIST_HOST ; 
 int /*<<< orphan*/  ZPOOL_HIST_INPUT_NVL ; 
 int /*<<< orphan*/  ZPOOL_HIST_INT_EVENT ; 
 int /*<<< orphan*/  ZPOOL_HIST_INT_NAME ; 
 int /*<<< orphan*/  ZPOOL_HIST_INT_STR ; 
 int /*<<< orphan*/  ZPOOL_HIST_IOCTL ; 
 int /*<<< orphan*/  ZPOOL_HIST_OUTPUT_NVL ; 
 int /*<<< orphan*/  ZPOOL_HIST_RECORD ; 
 int /*<<< orphan*/  ZPOOL_HIST_TIME ; 
 int /*<<< orphan*/  ZPOOL_HIST_TXG ; 
 int /*<<< orphan*/  ZPOOL_HIST_WHO ; 
 int /*<<< orphan*/  ZPOOL_HIST_ZONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct passwd* FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void**,struct tm*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,int*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 char** zfs_history_event_names ; 

__attribute__((used)) static void
FUNC12(nvlist_t *nvhis, hist_cbdata_t *cb)
{
	nvlist_t **records;
	uint_t numrecords;
	int i;

	FUNC11(FUNC8(nvhis, ZPOOL_HIST_RECORD,
	    &records, &numrecords) == 0);
	for (i = 0; i < numrecords; i++) {
		nvlist_t *rec = records[i];
		char tbuf[30] = "";

		if (FUNC7(rec, ZPOOL_HIST_TIME)) {
			time_t tsec;
			struct tm t;

			tsec = FUNC4(records[i],
			    ZPOOL_HIST_TIME);
			(void) FUNC6(&tsec, &t);
			(void) FUNC10(tbuf, sizeof (tbuf), "%F.%T", &t);
		}

		if (FUNC7(rec, ZPOOL_HIST_CMD)) {
			(void) FUNC9("%s %s", tbuf,
			    FUNC3(rec, ZPOOL_HIST_CMD));
		} else if (FUNC7(rec, ZPOOL_HIST_INT_EVENT)) {
			int ievent =
			    FUNC4(rec, ZPOOL_HIST_INT_EVENT);
			if (!cb->internal)
				continue;
			if (ievent >= ZFS_NUM_LEGACY_HISTORY_EVENTS) {
				(void) FUNC9("%s unrecognized record:\n",
				    tbuf);
				FUNC0(rec, 4);
				continue;
			}
			(void) FUNC9("%s [internal %s txg:%lld] %s", tbuf,
			    zfs_history_event_names[ievent],
			    (longlong_t)FUNC4(
			    rec, ZPOOL_HIST_TXG),
			    FUNC3(rec, ZPOOL_HIST_INT_STR));
		} else if (FUNC7(rec, ZPOOL_HIST_INT_NAME)) {
			if (!cb->internal)
				continue;
			(void) FUNC9("%s [txg:%lld] %s", tbuf,
			    (longlong_t)FUNC4(
			    rec, ZPOOL_HIST_TXG),
			    FUNC3(rec, ZPOOL_HIST_INT_NAME));
			if (FUNC7(rec, ZPOOL_HIST_DSNAME)) {
				(void) FUNC9(" %s (%llu)",
				    FUNC3(rec,
				    ZPOOL_HIST_DSNAME),
				    (u_longlong_t)FUNC4(rec,
				    ZPOOL_HIST_DSID));
			}
			(void) FUNC9(" %s", FUNC3(rec,
			    ZPOOL_HIST_INT_STR));
		} else if (FUNC7(rec, ZPOOL_HIST_IOCTL)) {
			if (!cb->internal)
				continue;
			(void) FUNC9("%s ioctl %s\n", tbuf,
			    FUNC3(rec, ZPOOL_HIST_IOCTL));
			if (FUNC7(rec, ZPOOL_HIST_INPUT_NVL)) {
				(void) FUNC9("    input:\n");
				FUNC0(FUNC2(rec,
				    ZPOOL_HIST_INPUT_NVL), 8);
			}
			if (FUNC7(rec, ZPOOL_HIST_OUTPUT_NVL)) {
				(void) FUNC9("    output:\n");
				FUNC0(FUNC2(rec,
				    ZPOOL_HIST_OUTPUT_NVL), 8);
			}
			if (FUNC7(rec, ZPOOL_HIST_ERRNO)) {
				(void) FUNC9("    errno: %lld\n",
				    (longlong_t)FUNC1(rec,
				    ZPOOL_HIST_ERRNO));
			}
		} else {
			if (!cb->internal)
				continue;
			(void) FUNC9("%s unrecognized record:\n", tbuf);
			FUNC0(rec, 4);
		}

		if (!cb->longfmt) {
			(void) FUNC9("\n");
			continue;
		}
		(void) FUNC9(" [");
		if (FUNC7(rec, ZPOOL_HIST_WHO)) {
			uid_t who = FUNC4(rec, ZPOOL_HIST_WHO);
			struct passwd *pwd = FUNC5(who);
			(void) FUNC9("user %d ", (int)who);
			if (pwd != NULL)
				(void) FUNC9("(%s) ", pwd->pw_name);
		}
		if (FUNC7(rec, ZPOOL_HIST_HOST)) {
			(void) FUNC9("on %s",
			    FUNC3(rec, ZPOOL_HIST_HOST));
		}
		if (FUNC7(rec, ZPOOL_HIST_ZONE)) {
			(void) FUNC9(":%s",
			    FUNC3(rec, ZPOOL_HIST_ZONE));
		}

		(void) FUNC9("]");
		(void) FUNC9("\n");
	}
}