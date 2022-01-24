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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dsl_crypto_params_t ;
typedef  int /*<<< orphan*/  dmu_objset_type_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  DCP_CMD_NONE ; 
 int EACCES ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WRAPPING_KEY_LEN ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,void*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*,char) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 char* FUNC10 (char*,char) ; 
 scalar_t__ ztest_wkeydata ; 

__attribute__((used)) static int
FUNC11(const char *name, dmu_objset_type_t type,
    boolean_t readonly, boolean_t decrypt, void *tag, objset_t **osp)
{
	int err;
	char *cp = NULL;
	char ddname[ZFS_MAX_DATASET_NAME_LEN];

	FUNC9(ddname, name);
	cp = FUNC8(ddname, '@');
	if (cp != NULL)
		*cp = '\0';

	err = FUNC1(name, type, readonly, decrypt, tag, osp);
	while (decrypt && err == EACCES) {
		dsl_crypto_params_t *dcp;
		nvlist_t *crypto_args = FUNC5();

		FUNC4(crypto_args, "wkeydata",
		    (uint8_t *)ztest_wkeydata, WRAPPING_KEY_LEN);
		FUNC0(FUNC2(DCP_CMD_NONE, NULL,
		    crypto_args, &dcp));
		err = FUNC7(ddname, dcp, B_FALSE);
		FUNC3(dcp, B_FALSE);
		FUNC6(crypto_args);

		if (err == EINVAL) {
			/*
			 * We couldn't load a key for this dataset so try
			 * the parent. This loop will eventually hit the
			 * encryption root since ztest only makes clones
			 * as children of their origin datasets.
			 */
			cp = FUNC10(ddname, '/');
			if (cp == NULL)
				return (err);

			*cp = '\0';
			err = EACCES;
			continue;
		} else if (err != 0) {
			break;
		}

		err = FUNC1(name, type, readonly, decrypt, tag, osp);
		break;
	}

	return (err);
}