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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int longlong_t ;
struct TYPE_3__ {int /*<<< orphan*/  libzfs_printerr; } ;
typedef  TYPE_1__ libzfs_handle_t ;
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int UINT64_MAX ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_LOAD_DATA_ERRORS ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_LOAD_INFO ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_LOAD_TIME ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_REWIND_INFO ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_REWIND_TIME ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (char*,int,char*,struct tm*) ; 

void
FUNC7(libzfs_handle_t *hdl, const char *name, int reason,
    nvlist_t *config)
{
	nvlist_t *nv = NULL;
	int64_t loss = -1;
	uint64_t edata = UINT64_MAX;
	uint64_t rewindto;
	struct tm t;
	char timestr[128];

	if (!hdl->libzfs_printerr)
		return;

	if (reason >= 0)
		(void) FUNC5(FUNC0(TEXT_DOMAIN, "action: "));
	else
		(void) FUNC5(FUNC0(TEXT_DOMAIN, "\t"));

	/* All attempted rewinds failed if ZPOOL_CONFIG_LOAD_TIME missing */
	if (FUNC3(config, ZPOOL_CONFIG_LOAD_INFO, &nv) != 0 ||
	    FUNC3(nv, ZPOOL_CONFIG_REWIND_INFO, &nv) != 0 ||
	    FUNC4(nv, ZPOOL_CONFIG_LOAD_TIME, &rewindto) != 0)
		goto no_info;

	(void) FUNC2(nv, ZPOOL_CONFIG_REWIND_TIME, &loss);
	(void) FUNC4(nv, ZPOOL_CONFIG_LOAD_DATA_ERRORS,
	    &edata);

	(void) FUNC5(FUNC0(TEXT_DOMAIN,
	    "Recovery is possible, but will result in some data loss.\n"));

	if (FUNC1((time_t *)&rewindto, &t) != NULL &&
	    FUNC6(timestr, 128, "%c", &t) != 0) {
		(void) FUNC5(FUNC0(TEXT_DOMAIN,
		    "\tReturning the pool to its state as of %s\n"
		    "\tshould correct the problem.  "),
		    timestr);
	} else {
		(void) FUNC5(FUNC0(TEXT_DOMAIN,
		    "\tReverting the pool to an earlier state "
		    "should correct the problem.\n\t"));
	}

	if (loss > 120) {
		(void) FUNC5(FUNC0(TEXT_DOMAIN,
		    "Approximately %lld minutes of data\n"
		    "\tmust be discarded, irreversibly.  "),
		    ((longlong_t)loss + 30) / 60);
	} else if (loss > 0) {
		(void) FUNC5(FUNC0(TEXT_DOMAIN,
		    "Approximately %lld seconds of data\n"
		    "\tmust be discarded, irreversibly.  "),
		    (longlong_t)loss);
	}
	if (edata != 0 && edata != UINT64_MAX) {
		if (edata == 1) {
			(void) FUNC5(FUNC0(TEXT_DOMAIN,
			    "After rewind, at least\n"
			    "\tone persistent user-data error will remain.  "));
		} else {
			(void) FUNC5(FUNC0(TEXT_DOMAIN,
			    "After rewind, several\n"
			    "\tpersistent user-data errors will remain.  "));
		}
	}
	(void) FUNC5(FUNC0(TEXT_DOMAIN,
	    "Recovery can be attempted\n\tby executing 'zpool %s -F %s'.  "),
	    reason >= 0 ? "clear" : "import", name);

	(void) FUNC5(FUNC0(TEXT_DOMAIN,
	    "A scrub of the pool\n"
	    "\tis strongly recommended after recovery.\n"));
	return;

no_info:
	(void) FUNC5(FUNC0(TEXT_DOMAIN,
	    "Destroy and re-create the pool from\n\ta backup source.\n"));
}