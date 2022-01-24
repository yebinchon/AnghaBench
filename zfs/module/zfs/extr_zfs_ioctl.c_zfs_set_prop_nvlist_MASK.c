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
typedef  scalar_t__ zprop_source_t ;
typedef  scalar_t__ zfs_prop_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  CE_PANIC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ DATA_TYPE_BOOLEAN ; 
 scalar_t__ DATA_TYPE_NVLIST ; 
 scalar_t__ DATA_TYPE_STRING ; 
 scalar_t__ DATA_TYPE_UINT64 ; 
 scalar_t__ DATA_TYPE_UINT64_ARRAY ; 
 int /*<<< orphan*/  EINVAL ; 
#define  PROP_TYPE_INDEX 130 
#define  PROP_TYPE_NUMBER 129 
#define  PROP_TYPE_STRING 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ZPROP_INVAL ; 
 scalar_t__ ZPROP_SRC_INHERITED ; 
 int /*<<< orphan*/  ZPROP_VALUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (char const*,char const*,scalar_t__) ; 
 int FUNC4 (char const*,char const*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,char const*,scalar_t__,char*) ; 
 scalar_t__ FUNC6 (char const*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (char const*) ; 
 int FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,int /*<<< orphan*/ ,char const**) ; 
 int FUNC24 (char const*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (char const*) ; 
 scalar_t__ FUNC26 (char const*) ; 

int
FUNC27(const char *dsname, zprop_source_t source, nvlist_t *nvl,
    nvlist_t *errlist)
{
	nvpair_t *pair;
	nvpair_t *propval;
	int rv = 0;
	uint64_t intval;
	char *strval;

	nvlist_t *genericnvl = FUNC8();
	nvlist_t *retrynvl = FUNC8();
retry:
	pair = NULL;
	while ((pair = FUNC17(nvl, pair)) != NULL) {
		const char *propname = FUNC18(pair);
		zfs_prop_t prop = FUNC21(propname);
		int err = 0;

		/* decode the property value */
		propval = pair;
		if (FUNC19(pair) == DATA_TYPE_NVLIST) {
			nvlist_t *attrs;
			attrs = FUNC10(pair);
			if (FUNC16(attrs, ZPROP_VALUE,
			    &propval) != 0)
				err = FUNC1(EINVAL);
		}

		/* Validate value type */
		if (err == 0 && source == ZPROP_SRC_INHERITED) {
			/* inherited properties are expected to be booleans */
			if (FUNC19(propval) != DATA_TYPE_BOOLEAN)
				err = FUNC1(EINVAL);
		} else if (err == 0 && prop == ZPROP_INVAL) {
			if (FUNC25(propname)) {
				if (FUNC19(propval) != DATA_TYPE_STRING)
					err = FUNC1(EINVAL);
			} else if (FUNC26(propname)) {
				if (FUNC19(propval) !=
				    DATA_TYPE_UINT64_ARRAY)
					err = FUNC1(EINVAL);
			} else {
				err = FUNC1(EINVAL);
			}
		} else if (err == 0) {
			if (FUNC19(propval) == DATA_TYPE_STRING) {
				if (FUNC22(prop) != PROP_TYPE_STRING)
					err = FUNC1(EINVAL);
			} else if (FUNC19(propval) == DATA_TYPE_UINT64) {
				const char *unused;

				intval = FUNC12(propval);

				switch (FUNC22(prop)) {
				case PROP_TYPE_NUMBER:
					break;
				case PROP_TYPE_STRING:
					err = FUNC1(EINVAL);
					break;
				case PROP_TYPE_INDEX:
					if (FUNC23(prop,
					    intval, &unused) != 0)
						err = FUNC1(EINVAL);
					break;
				default:
					FUNC2(CE_PANIC,
					    "unknown property type");
				}
			} else {
				err = FUNC1(EINVAL);
			}
		}

		/* Validate permissions */
		if (err == 0)
			err = FUNC20(dsname, pair, FUNC0());

		if (err == 0) {
			if (source == ZPROP_SRC_INHERITED)
				err = -1; /* does not need special handling */
			else
				err = FUNC24(dsname, source,
				    pair);
			if (err == -1) {
				/*
				 * For better performance we build up a list of
				 * properties to set in a single transaction.
				 */
				err = FUNC13(genericnvl, pair);
			} else if (err != 0 && nvl != retrynvl) {
				/*
				 * This may be a spurious error caused by
				 * receiving quota and reservation out of order.
				 * Try again in a second pass.
				 */
				err = FUNC13(retrynvl, pair);
			}
		}

		if (err != 0) {
			if (errlist != NULL)
				FUNC7(errlist, propname, err);
			rv = err;
		}
	}

	if (nvl != retrynvl && !FUNC14(retrynvl)) {
		nvl = retrynvl;
		goto retry;
	}

	if (!FUNC14(genericnvl) &&
	    FUNC6(dsname, source, genericnvl) != 0) {
		/*
		 * If this fails, we still want to set as many properties as we
		 * can, so try setting them individually.
		 */
		pair = NULL;
		while ((pair = FUNC17(genericnvl, pair)) != NULL) {
			const char *propname = FUNC18(pair);
			int err = 0;

			propval = pair;
			if (FUNC19(pair) == DATA_TYPE_NVLIST) {
				nvlist_t *attrs;
				attrs = FUNC10(pair);
				propval = FUNC9(attrs,
				    ZPROP_VALUE);
			}

			if (FUNC19(propval) == DATA_TYPE_STRING) {
				strval = FUNC11(propval);
				err = FUNC5(dsname, propname,
				    source, strval);
			} else if (FUNC19(propval) == DATA_TYPE_BOOLEAN) {
				err = FUNC3(dsname, propname,
				    source);
			} else {
				intval = FUNC12(propval);
				err = FUNC4(dsname, propname, source,
				    intval);
			}

			if (err != 0) {
				if (errlist != NULL) {
					FUNC7(errlist, propname,
					    err);
				}
				rv = err;
			}
		}
	}
	FUNC15(genericnvl);
	FUNC15(retrynvl);

	return (rv);
}