#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_14__ {int /*<<< orphan*/  skcka_dsname; TYPE_5__* skcka_cp; } ;
typedef  TYPE_2__ spa_keystore_change_key_args_t ;
struct TYPE_15__ {int /*<<< orphan*/  dp_spa; } ;
typedef  TYPE_3__ dsl_pool_t ;
struct TYPE_16__ {scalar_t__ dd_crypto_obj; scalar_t__ dd_object; struct TYPE_16__* dd_parent; } ;
typedef  TYPE_4__ dsl_dir_t ;
struct TYPE_17__ {scalar_t__ cp_cmd; scalar_t__ cp_crypt; TYPE_1__* cp_wkey; int /*<<< orphan*/ * cp_keylocation; } ;
typedef  TYPE_5__ dsl_crypto_params_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_13__ {scalar_t__ wk_keyformat; scalar_t__ wk_salt; scalar_t__ wk_iters; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ DCP_CMD_FORCE_INHERIT ; 
 scalar_t__ DCP_CMD_FORCE_NEW_KEY ; 
 scalar_t__ DCP_CMD_INHERIT ; 
 scalar_t__ DCP_CMD_NEW_KEY ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  FTAG ; 
 scalar_t__ MIN_PBKDF2_ITERATIONS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_FEATURE_ENCRYPTION ; 
 scalar_t__ ZFS_KEYFORMAT_FORMATS ; 
 scalar_t__ ZFS_KEYFORMAT_NONE ; 
 scalar_t__ ZFS_KEYFORMAT_PASSPHRASE ; 
 scalar_t__ ZIO_CRYPT_INHERIT ; 
 int FUNC1 (TYPE_4__*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_4__*,scalar_t__*) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(void *arg, dmu_tx_t *tx)
{
	int ret;
	dsl_dir_t *dd = NULL;
	dsl_pool_t *dp = FUNC2(tx);
	spa_keystore_change_key_args_t *skcka = arg;
	dsl_crypto_params_t *dcp = skcka->skcka_cp;
	uint64_t rddobj;

	/* check for the encryption feature */
	if (!FUNC7(dp->dp_spa, SPA_FEATURE_ENCRYPTION)) {
		ret = FUNC0(ENOTSUP);
		goto error;
	}

	/* check for valid key change command */
	if (dcp->cp_cmd != DCP_CMD_NEW_KEY &&
	    dcp->cp_cmd != DCP_CMD_INHERIT &&
	    dcp->cp_cmd != DCP_CMD_FORCE_NEW_KEY &&
	    dcp->cp_cmd != DCP_CMD_FORCE_INHERIT) {
		ret = FUNC0(EINVAL);
		goto error;
	}

	/* hold the dd */
	ret = FUNC4(dp, skcka->skcka_dsname, FTAG, &dd, NULL);
	if (ret != 0) {
		dd = NULL;
		goto error;
	}

	/* verify that the dataset is encrypted */
	if (dd->dd_crypto_obj == 0) {
		ret = FUNC0(EINVAL);
		goto error;
	}

	/* clones must always use their origin's key */
	if (FUNC5(dd)) {
		ret = FUNC0(EINVAL);
		goto error;
	}

	/* lookup the ddobj we are inheriting the keylocation from */
	ret = FUNC3(dd, &rddobj);
	if (ret != 0)
		goto error;

	/* Handle inheritance */
	if (dcp->cp_cmd == DCP_CMD_INHERIT ||
	    dcp->cp_cmd == DCP_CMD_FORCE_INHERIT) {
		/* no other encryption params should be given */
		if (dcp->cp_crypt != ZIO_CRYPT_INHERIT ||
		    dcp->cp_keylocation != NULL ||
		    dcp->cp_wkey != NULL) {
			ret = FUNC0(EINVAL);
			goto error;
		}

		/* check that this is an encryption root */
		if (dd->dd_object != rddobj) {
			ret = FUNC0(EINVAL);
			goto error;
		}

		/* check that the parent is encrypted */
		if (dd->dd_parent->dd_crypto_obj == 0) {
			ret = FUNC0(EINVAL);
			goto error;
		}

		/* if we are rewrapping check that both keys are loaded */
		if (dcp->cp_cmd == DCP_CMD_INHERIT) {
			ret = FUNC1(dd);
			if (ret != 0)
				goto error;

			ret = FUNC1(dd->dd_parent);
			if (ret != 0)
				goto error;
		}

		FUNC6(dd, FTAG);
		return (0);
	}

	/* handle forcing an encryption root without rewrapping */
	if (dcp->cp_cmd == DCP_CMD_FORCE_NEW_KEY) {
		/* no other encryption params should be given */
		if (dcp->cp_crypt != ZIO_CRYPT_INHERIT ||
		    dcp->cp_keylocation != NULL ||
		    dcp->cp_wkey != NULL) {
			ret = FUNC0(EINVAL);
			goto error;
		}

		/* check that this is not an encryption root */
		if (dd->dd_object == rddobj) {
			ret = FUNC0(EINVAL);
			goto error;
		}

		FUNC6(dd, FTAG);
		return (0);
	}

	/* crypt cannot be changed after creation */
	if (dcp->cp_crypt != ZIO_CRYPT_INHERIT) {
		ret = FUNC0(EINVAL);
		goto error;
	}

	/* we are not inheritting our parent's wkey so we need one ourselves */
	if (dcp->cp_wkey == NULL) {
		ret = FUNC0(EINVAL);
		goto error;
	}

	/* check for a valid keyformat for the new wrapping key */
	if (dcp->cp_wkey->wk_keyformat >= ZFS_KEYFORMAT_FORMATS ||
	    dcp->cp_wkey->wk_keyformat == ZFS_KEYFORMAT_NONE) {
		ret = FUNC0(EINVAL);
		goto error;
	}

	/*
	 * If this dataset is not currently an encryption root we need a new
	 * keylocation for this dataset's new wrapping key. Otherwise we can
	 * just keep the one we already had.
	 */
	if (dd->dd_object != rddobj && dcp->cp_keylocation == NULL) {
		ret = FUNC0(EINVAL);
		goto error;
	}

	/* check that the keylocation is valid if it is not NULL */
	if (dcp->cp_keylocation != NULL &&
	    !FUNC8(dcp->cp_keylocation, B_TRUE)) {
		ret = FUNC0(EINVAL);
		goto error;
	}

	/* passphrases require pbkdf2 salt and iters */
	if (dcp->cp_wkey->wk_keyformat == ZFS_KEYFORMAT_PASSPHRASE) {
		if (dcp->cp_wkey->wk_salt == 0 ||
		    dcp->cp_wkey->wk_iters < MIN_PBKDF2_ITERATIONS) {
			ret = FUNC0(EINVAL);
			goto error;
		}
	} else {
		if (dcp->cp_wkey->wk_salt != 0 || dcp->cp_wkey->wk_iters != 0) {
			ret = FUNC0(EINVAL);
			goto error;
		}
	}

	/* make sure the dd's wkey is loaded */
	ret = FUNC1(dd);
	if (ret != 0)
		goto error;

	FUNC6(dd, FTAG);

	return (0);

error:
	if (dd != NULL)
		FUNC6(dd, FTAG);

	return (ret);
}