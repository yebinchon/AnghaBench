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
typedef  int /*<<< orphan*/  zfs_ioc_t ;
typedef  int /*<<< orphan*/  pname ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int data_type_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
#define  DATA_TYPE_STRING 128 
 int MAXNAMELEN ; 
 int ZFS_ERR_IOC_ARG_BADTYPE ; 
 int ZFS_ERR_IOC_ARG_REQUIRED ; 
 int ZFS_ERR_IOC_ARG_UNAVAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC13(zfs_ioc_t ioc, const char *name, nvlist_t *required,
    nvlist_t *optional, int expected_error, boolean_t wildcard)
{
	nvlist_t *input = FUNC4();
	nvlist_t *future = FUNC4();
	int error = 0;

	if (required != NULL) {
		for (nvpair_t *pair = FUNC9(required, NULL);
		    pair != NULL; pair = FUNC9(required, pair)) {
			FUNC1(input, pair);
		}
	}
	if (optional != NULL) {
		for (nvpair_t *pair = FUNC9(optional, NULL);
		    pair != NULL; pair = FUNC9(optional, pair)) {
			FUNC1(input, pair);
		}
	}

	/*
	 * Generic input run with 'optional' nvlist pair
	 */
	if (!wildcard)
		FUNC0(input, "optional", future);
	FUNC7(ioc, name, input, expected_error);
	if (!wildcard)
		FUNC5(input, "optional");

	/*
	 * Bogus input value
	 */
	if (!wildcard) {
		FUNC2(input, "bogus_input", "bogus");
		FUNC7(ioc, name, input, ZFS_ERR_IOC_ARG_UNAVAIL);
		FUNC5(input, "bogus_input");
	}

	/*
	 * Missing required inputs
	 */
	if (required != NULL) {
		nvlist_t *empty = FUNC4();
		FUNC7(ioc, name, empty, ZFS_ERR_IOC_ARG_REQUIRED);
		FUNC8(empty);
	}

	/*
	 * Wrong nvpair type
	 */
	if (required != NULL || optional != NULL) {
		/*
		 * switch the type of one of the input pairs
		 */
		for (nvpair_t *pair = FUNC9(input, NULL);
		    pair != NULL; pair = FUNC9(input, pair)) {
			char pname[MAXNAMELEN];
			data_type_t ptype;

			FUNC12(pname, FUNC10(pair), sizeof (pname));
			pname[sizeof (pname) - 1] = '\0';
			ptype = FUNC11(pair);
			FUNC6(input, pair);

			switch (ptype) {
			case DATA_TYPE_STRING:
				FUNC3(input, pname, 42);
				break;
			default:
				FUNC2(input, pname, "bogus");
				break;
			}
		}
		FUNC7(ioc, name, input, ZFS_ERR_IOC_ARG_BADTYPE);
	}

	FUNC8(future);
	FUNC8(input);

	return (error);
}