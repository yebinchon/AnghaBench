#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dsl_wrapping_key_t ;
struct TYPE_5__ {scalar_t__ cp_cmd; scalar_t__ cp_crypt; int /*<<< orphan*/ * cp_wkey; int /*<<< orphan*/  cp_keylocation; } ;
typedef  TYPE_1__ dsl_crypto_params_t ;
typedef  void* dcp_cmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ DCP_CMD_MAX ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ WRAPPING_KEY_LEN ; 
 scalar_t__ ZFS_KEYFORMAT_FORMATS ; 
 scalar_t__ ZFS_KEYFORMAT_NONE ; 
 int /*<<< orphan*/  ZFS_PROP_ENCRYPTION ; 
 int /*<<< orphan*/  ZFS_PROP_KEYFORMAT ; 
 int /*<<< orphan*/  ZFS_PROP_KEYLOCATION ; 
 int /*<<< orphan*/  ZFS_PROP_PBKDF2_ITERS ; 
 int /*<<< orphan*/  ZFS_PROP_PBKDF2_SALT ; 
 scalar_t__ ZIO_CRYPT_FUNCTIONS ; 
 scalar_t__ ZIO_CRYPT_INHERIT ; 
 scalar_t__ ZIO_CRYPT_ON ; 
 scalar_t__ ZIO_CRYPT_ON_VALUE ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 

int
FUNC12(dcp_cmd_t cmd, nvlist_t *props,
    nvlist_t *crypto_args, dsl_crypto_params_t **dcp_out)
{
	int ret;
	uint64_t crypt = ZIO_CRYPT_INHERIT;
	uint64_t keyformat = ZFS_KEYFORMAT_NONE;
	uint64_t salt = 0, iters = 0;
	dsl_crypto_params_t *dcp = NULL;
	dsl_wrapping_key_t *wkey = NULL;
	uint8_t *wkeydata = NULL;
	uint_t wkeydata_len = 0;
	char *keylocation = NULL;

	dcp = FUNC4(sizeof (dsl_crypto_params_t), KM_SLEEP);
	if (!dcp) {
		ret = FUNC0(ENOMEM);
		goto error;
	}

	dcp->cp_cmd = cmd;

	/* get relevant arguments from the nvlists */
	if (props != NULL) {
		(void) FUNC6(props,
		    FUNC10(ZFS_PROP_ENCRYPTION), &crypt);
		(void) FUNC6(props,
		    FUNC10(ZFS_PROP_KEYFORMAT), &keyformat);
		(void) FUNC5(props,
		    FUNC10(ZFS_PROP_KEYLOCATION), &keylocation);
		(void) FUNC6(props,
		    FUNC10(ZFS_PROP_PBKDF2_SALT), &salt);
		(void) FUNC6(props,
		    FUNC10(ZFS_PROP_PBKDF2_ITERS), &iters);

		dcp->cp_crypt = crypt;
	}

	if (crypto_args != NULL) {
		(void) FUNC7(crypto_args, "wkeydata",
		    &wkeydata, &wkeydata_len);
	}

	/* check for valid command */
	if (dcp->cp_cmd >= DCP_CMD_MAX) {
		ret = FUNC0(EINVAL);
		goto error;
	} else {
		dcp->cp_cmd = cmd;
	}

	/* check for valid crypt */
	if (dcp->cp_crypt >= ZIO_CRYPT_FUNCTIONS) {
		ret = FUNC0(EINVAL);
		goto error;
	} else {
		dcp->cp_crypt = crypt;
	}

	/* check for valid keyformat */
	if (keyformat >= ZFS_KEYFORMAT_FORMATS) {
		ret = FUNC0(EINVAL);
		goto error;
	}

	/* check for a valid keylocation (of any kind) and copy it in */
	if (keylocation != NULL) {
		if (!FUNC11(keylocation, B_FALSE)) {
			ret = FUNC0(EINVAL);
			goto error;
		}

		dcp->cp_keylocation = FUNC9(keylocation);
	}

	/* check wrapping key length, if given */
	if (wkeydata != NULL && wkeydata_len != WRAPPING_KEY_LEN) {
		ret = FUNC0(EINVAL);
		goto error;
	}

	/* if the user asked for the default crypt, determine that now */
	if (dcp->cp_crypt == ZIO_CRYPT_ON)
		dcp->cp_crypt = ZIO_CRYPT_ON_VALUE;

	/* create the wrapping key from the raw data */
	if (wkeydata != NULL) {
		/* create the wrapping key with the verified parameters */
		ret = FUNC1(wkeydata, keyformat, salt,
		    iters, &wkey);
		if (ret != 0)
			goto error;

		dcp->cp_wkey = wkey;
	}

	/*
	 * Remove the encryption properties from the nvlist since they are not
	 * maintained through the DSL.
	 */
	(void) FUNC8(props, FUNC10(ZFS_PROP_ENCRYPTION));
	(void) FUNC8(props, FUNC10(ZFS_PROP_KEYFORMAT));
	(void) FUNC8(props, FUNC10(ZFS_PROP_PBKDF2_SALT));
	(void) FUNC8(props,
	    FUNC10(ZFS_PROP_PBKDF2_ITERS));

	*dcp_out = dcp;

	return (0);

error:
	if (wkey != NULL)
		FUNC2(wkey);
	if (dcp != NULL)
		FUNC3(dcp, sizeof (dsl_crypto_params_t));

	*dcp_out = NULL;
	return (ret);
}