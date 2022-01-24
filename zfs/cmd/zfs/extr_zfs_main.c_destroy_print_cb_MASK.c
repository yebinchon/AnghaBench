#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/ * cb_prevsnap; int /*<<< orphan*/ * cb_firstsnap; int /*<<< orphan*/  cb_snapused; scalar_t__ cb_dryrun; scalar_t__ cb_parsable; scalar_t__ cb_verbose; int /*<<< orphan*/  cb_nvl; } ;
typedef  TYPE_1__ destroy_cbdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 void* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(zfs_handle_t *zhp, void *arg)
{
	destroy_cbdata_t *cb = arg;
	const char *name = FUNC8(zhp);
	int err = 0;

	if (FUNC4(cb->cb_nvl, name)) {
		if (cb->cb_firstsnap == NULL)
			cb->cb_firstsnap = FUNC6(name);
		if (cb->cb_prevsnap != NULL)
			FUNC0(cb->cb_prevsnap);
		/* this snap continues the current range */
		cb->cb_prevsnap = FUNC6(name);
		if (cb->cb_firstsnap == NULL || cb->cb_prevsnap == NULL)
			FUNC3();
		if (cb->cb_verbose) {
			if (cb->cb_parsable) {
				(void) FUNC5("destroy\t%s\n", name);
			} else if (cb->cb_dryrun) {
				(void) FUNC5(FUNC1("would destroy %s\n"),
				    name);
			} else {
				(void) FUNC5(FUNC1("will destroy %s\n"),
				    name);
			}
		}
	} else if (cb->cb_firstsnap != NULL) {
		/* end of this range */
		uint64_t used = 0;
		err = FUNC2(cb->cb_firstsnap,
		    cb->cb_prevsnap, &used);
		cb->cb_snapused += used;
		FUNC0(cb->cb_firstsnap);
		cb->cb_firstsnap = NULL;
		FUNC0(cb->cb_prevsnap);
		cb->cb_prevsnap = NULL;
	}
	FUNC7(zhp);
	return (err);
}