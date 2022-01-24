#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_6__ {int /*<<< orphan*/  dp_meta_objset; int /*<<< orphan*/  dp_root_dir_obj; int /*<<< orphan*/  dp_spa; } ;
typedef  TYPE_1__ dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dir_t ;
typedef  int /*<<< orphan*/  ddobj ;
struct TYPE_7__ {int /*<<< orphan*/  dd_child_dir_zapobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOENT ; 
 int EXDEV ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*,...) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char*,void*,int /*<<< orphan*/ **) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (char const*,char*,char const**) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char*,char const*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ *) ; 

int
FUNC13(dsl_pool_t *dp, const char *name, void *tag,
    dsl_dir_t **ddp, const char **tailp)
{
	char *buf;
	const char *spaname, *next, *nextnext = NULL;
	int err;
	dsl_dir_t *dd;
	uint64_t ddobj;

	buf = FUNC8(ZFS_MAX_DATASET_NAME_LEN, KM_SLEEP);
	err = FUNC7(name, buf, &next);
	if (err != 0)
		goto error;

	/* Make sure the name is in the specified pool. */
	spaname = FUNC10(dp->dp_spa);
	if (FUNC11(buf, spaname) != 0) {
		err = FUNC1(EXDEV);
		goto error;
	}

	FUNC0(FUNC6(dp));

	err = FUNC3(dp, dp->dp_root_dir_obj, NULL, tag, &dd);
	if (err != 0) {
		goto error;
	}

	while (next != NULL) {
		dsl_dir_t *child_dd;
		err = FUNC7(next, buf, &nextnext);
		if (err != 0)
			break;
		FUNC0(next[0] != '\0');
		if (next[0] == '@')
			break;
		FUNC2("looking up %s in obj%lld\n",
		    buf, FUNC4(dd)->dd_child_dir_zapobj);

		err = FUNC12(dp->dp_meta_objset,
		    FUNC4(dd)->dd_child_dir_zapobj,
		    buf, sizeof (ddobj), 1, &ddobj);
		if (err != 0) {
			if (err == ENOENT)
				err = 0;
			break;
		}

		err = FUNC3(dp, ddobj, buf, tag, &child_dd);
		if (err != 0)
			break;
		FUNC5(dd, tag);
		dd = child_dd;
		next = nextnext;
	}

	if (err != 0) {
		FUNC5(dd, tag);
		goto error;
	}

	/*
	 * It's an error if there's more than one component left, or
	 * tailp==NULL and there's any component left.
	 */
	if (next != NULL &&
	    (tailp == NULL || (nextnext && nextnext[0] != '\0'))) {
		/* bad path name */
		FUNC5(dd, tag);
		FUNC2("next=%p (%s) tail=%p\n", next, next?next:"", tailp);
		err = FUNC1(ENOENT);
	}
	if (tailp != NULL)
		*tailp = next;
	if (err == 0)
		*ddp = dd;
error:
	FUNC9(buf, ZFS_MAX_DATASET_NAME_LEN);
	return (err);
}