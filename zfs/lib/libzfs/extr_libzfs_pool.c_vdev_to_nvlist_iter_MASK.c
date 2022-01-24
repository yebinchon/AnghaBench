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
typedef  size_t uint_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
#define  DATA_TYPE_STRING 129 
#define  DATA_TYPE_UINT64 128 
 int /*<<< orphan*/  ZPOOL_CONFIG_CHILDREN ; 
 char* ZPOOL_CONFIG_GUID ; 
 char* ZPOOL_CONFIG_ID ; 
 char* ZPOOL_CONFIG_IS_LOG ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_L2CACHE ; 
 char* ZPOOL_CONFIG_PATH ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_SPARES ; 
 char* ZPOOL_CONFIG_TYPE ; 
 char* ZPOOL_CONFIG_WHOLE_DISK ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 char* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC13 (char*,char) ; 
 scalar_t__ FUNC14 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,scalar_t__) ; 
 int FUNC17 (char*) ; 

__attribute__((used)) static nvlist_t *
FUNC18(nvlist_t *nv, nvlist_t *search, boolean_t *avail_spare,
    boolean_t *l2cache, boolean_t *log)
{
	uint_t c, children;
	nvlist_t **child;
	nvlist_t *ret;
	uint64_t is_log;
	char *srchkey;
	nvpair_t *pair = FUNC4(search, NULL);

	/* Nothing to look for */
	if (search == NULL || pair == NULL)
		return (NULL);

	/* Obtain the key we will use to search */
	srchkey = FUNC5(pair);

	switch (FUNC6(pair)) {
	case DATA_TYPE_UINT64:
		if (FUNC9(srchkey, ZPOOL_CONFIG_GUID) == 0) {
			uint64_t srchval, theguid;

			FUNC15(FUNC8(pair, &srchval) == 0);
			FUNC15(FUNC3(nv, ZPOOL_CONFIG_GUID,
			    &theguid) == 0);
			if (theguid == srchval)
				return (nv);
		}
		break;

	case DATA_TYPE_STRING: {
		char *srchval, *val;

		FUNC15(FUNC7(pair, &srchval) == 0);
		if (FUNC2(nv, srchkey, &val) != 0)
			break;

		/*
		 * Search for the requested value. Special cases:
		 *
		 * - ZPOOL_CONFIG_PATH for whole disk entries.  These end in
		 *   "-part1", or "p1".  The suffix is hidden from the user,
		 *   but included in the string, so this matches around it.
		 * - ZPOOL_CONFIG_PATH for short names zfs_strcmp_shortname()
		 *   is used to check all possible expanded paths.
		 * - looking for a top-level vdev name (i.e. ZPOOL_CONFIG_TYPE).
		 *
		 * Otherwise, all other searches are simple string compares.
		 */
		if (FUNC9(srchkey, ZPOOL_CONFIG_PATH) == 0) {
			uint64_t wholedisk = 0;

			(void) FUNC3(nv, ZPOOL_CONFIG_WHOLE_DISK,
			    &wholedisk);
			if (FUNC16(srchval, val, wholedisk) == 0)
				return (nv);

		} else if (FUNC9(srchkey, ZPOOL_CONFIG_TYPE) == 0 && val) {
			char *type, *idx, *end, *p;
			uint64_t id, vdev_id;

			/*
			 * Determine our vdev type, keeping in mind
			 * that the srchval is composed of a type and
			 * vdev id pair (i.e. mirror-4).
			 */
			if ((type = FUNC10(srchval)) == NULL)
				return (NULL);

			if ((p = FUNC13(type, '-')) == NULL) {
				FUNC0(type);
				break;
			}
			idx = p + 1;
			*p = '\0';

			/*
			 * If the types don't match then keep looking.
			 */
			if (FUNC12(val, type, FUNC11(val)) != 0) {
				FUNC0(type);
				break;
			}

			FUNC15(FUNC17(type));
			FUNC15(FUNC3(nv, ZPOOL_CONFIG_ID,
			    &id) == 0);

			errno = 0;
			vdev_id = FUNC14(idx, &end, 10);

			FUNC0(type);
			if (errno != 0)
				return (NULL);

			/*
			 * Now verify that we have the correct vdev id.
			 */
			if (vdev_id == id)
				return (nv);
		}

		/*
		 * Common case
		 */
		if (FUNC9(srchval, val) == 0)
			return (nv);
		break;
	}

	default:
		break;
	}

	if (FUNC1(nv, ZPOOL_CONFIG_CHILDREN,
	    &child, &children) != 0)
		return (NULL);

	for (c = 0; c < children; c++) {
		if ((ret = FUNC18(child[c], search,
		    avail_spare, l2cache, NULL)) != NULL) {
			/*
			 * The 'is_log' value is only set for the toplevel
			 * vdev, not the leaf vdevs.  So we always lookup the
			 * log device from the root of the vdev tree (where
			 * 'log' is non-NULL).
			 */
			if (log != NULL &&
			    FUNC3(child[c],
			    ZPOOL_CONFIG_IS_LOG, &is_log) == 0 &&
			    is_log) {
				*log = B_TRUE;
			}
			return (ret);
		}
	}

	if (FUNC1(nv, ZPOOL_CONFIG_SPARES,
	    &child, &children) == 0) {
		for (c = 0; c < children; c++) {
			if ((ret = FUNC18(child[c], search,
			    avail_spare, l2cache, NULL)) != NULL) {
				*avail_spare = B_TRUE;
				return (ret);
			}
		}
	}

	if (FUNC1(nv, ZPOOL_CONFIG_L2CACHE,
	    &child, &children) == 0) {
		for (c = 0; c < children; c++) {
			if ((ret = FUNC18(child[c], search,
			    avail_spare, l2cache, NULL)) != NULL) {
				*l2cache = B_TRUE;
				return (ret);
			}
		}
	}

	return (NULL);
}