#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  zfs_hdl; int /*<<< orphan*/  zfs_name; int /*<<< orphan*/  zpool_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  prop_keylocation ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
#define  EACCES 132 
#define  EBUSY 131 
#define  EEXIST 130 
#define  EINVAL 129 
#define  EPERM 128 
 int /*<<< orphan*/  EZFS_CRYPTOFAILED ; 
 int MAXNAMELEN ; 
 int MAX_KEY_PROMPT_ATTEMPTS ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  WRAPPING_KEY_LEN ; 
 scalar_t__ ZFS_KEYFORMAT_NONE ; 
 scalar_t__ ZFS_KEYFORMAT_PASSPHRASE ; 
 scalar_t__ ZFS_KEYSTATUS_AVAILABLE ; 
 int /*<<< orphan*/  ZFS_PROP_KEYFORMAT ; 
 int /*<<< orphan*/  ZFS_PROP_KEYLOCATION ; 
 int /*<<< orphan*/  ZFS_PROP_KEYSTATUS ; 
 int /*<<< orphan*/  ZFS_PROP_PBKDF2_ITERS ; 
 int /*<<< orphan*/  ZFS_PROP_PBKDF2_SALT ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *,size_t,scalar_t__,int /*<<< orphan*/ **) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*,scalar_t__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*) ; 
 int FUNC7 (TYPE_1__*,scalar_t__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC13(zfs_handle_t *zhp, boolean_t noop, char *alt_keylocation)
{
	int ret, attempts = 0;
	char errbuf[1024];
	uint64_t keystatus, iters = 0, salt = 0;
	uint64_t keyformat = ZFS_KEYFORMAT_NONE;
	char prop_keylocation[MAXNAMELEN];
	char prop_encroot[MAXNAMELEN];
	char *keylocation = NULL;
	uint8_t *key_material = NULL, *key_data = NULL;
	size_t key_material_len;
	boolean_t is_encroot, can_retry = B_FALSE, correctible = B_FALSE;

	(void) FUNC6(errbuf, sizeof (errbuf),
	    FUNC1(TEXT_DOMAIN, "Key load error"));

	/* check that encryption is enabled for the pool */
	if (!FUNC2(zhp->zpool_hdl)) {
		FUNC9(zhp->zfs_hdl, FUNC1(TEXT_DOMAIN,
		    "Encryption feature not enabled."));
		ret = EINVAL;
		goto error;
	}

	/* Fetch the keyformat. Check that the dataset is encrypted. */
	keyformat = FUNC12(zhp, ZFS_PROP_KEYFORMAT);
	if (keyformat == ZFS_KEYFORMAT_NONE) {
		FUNC9(zhp->zfs_hdl, FUNC1(TEXT_DOMAIN,
		    "'%s' is not encrypted."), FUNC10(zhp));
		ret = EINVAL;
		goto error;
	}

	/*
	 * Fetch the key location. Check that we are working with an
	 * encryption root.
	 */
	ret = FUNC7(zhp, &is_encroot, prop_encroot);
	if (ret != 0) {
		FUNC9(zhp->zfs_hdl, FUNC1(TEXT_DOMAIN,
		    "Failed to get encryption root for '%s'."),
		    FUNC10(zhp));
		goto error;
	} else if (!is_encroot) {
		FUNC9(zhp->zfs_hdl, FUNC1(TEXT_DOMAIN,
		    "Keys must be loaded for encryption root of '%s' (%s)."),
		    FUNC10(zhp), prop_encroot);
		ret = EINVAL;
		goto error;
	}

	/*
	 * if the caller has elected to override the keylocation property
	 * use that instead
	 */
	if (alt_keylocation != NULL) {
		keylocation = alt_keylocation;
	} else {
		ret = FUNC11(zhp, ZFS_PROP_KEYLOCATION, prop_keylocation,
		    sizeof (prop_keylocation), NULL, NULL, 0, B_TRUE);
		if (ret != 0) {
			FUNC9(zhp->zfs_hdl, FUNC1(TEXT_DOMAIN,
			    "Failed to get keylocation for '%s'."),
			    FUNC10(zhp));
			goto error;
		}

		keylocation = prop_keylocation;
	}

	/* check that the key is unloaded unless this is a noop */
	if (!noop) {
		keystatus = FUNC12(zhp, ZFS_PROP_KEYSTATUS);
		if (keystatus == ZFS_KEYSTATUS_AVAILABLE) {
			FUNC9(zhp->zfs_hdl, FUNC1(TEXT_DOMAIN,
			    "Key already loaded for '%s'."), FUNC10(zhp));
			ret = EEXIST;
			goto error;
		}
	}

	/* passphrase formats require a salt and pbkdf2_iters property */
	if (keyformat == ZFS_KEYFORMAT_PASSPHRASE) {
		salt = FUNC12(zhp, ZFS_PROP_PBKDF2_SALT);
		iters = FUNC12(zhp, ZFS_PROP_PBKDF2_ITERS);
	}

try_again:
	/* fetching and deriving the key are correctable errors. set the flag */
	correctible = B_TRUE;

	/* get key material from key format and location */
	ret = FUNC4(zhp->zfs_hdl, B_FALSE, B_FALSE, keyformat,
	    keylocation, FUNC10(zhp), &key_material, &key_material_len,
	    &can_retry);
	if (ret != 0)
		goto error;

	/* derive a key from the key material */
	ret = FUNC0(zhp->zfs_hdl, keyformat, iters, key_material,
	    key_material_len, salt, &key_data);
	if (ret != 0)
		goto error;

	correctible = B_FALSE;

	/* pass the wrapping key and noop flag to the ioctl */
	ret = FUNC5(zhp->zfs_name, noop, key_data, WRAPPING_KEY_LEN);
	if (ret != 0) {
		switch (ret) {
		case EPERM:
			FUNC9(zhp->zfs_hdl, FUNC1(TEXT_DOMAIN,
			    "Permission denied."));
			break;
		case EINVAL:
			FUNC9(zhp->zfs_hdl, FUNC1(TEXT_DOMAIN,
			    "Invalid parameters provided for dataset %s."),
			    FUNC10(zhp));
			break;
		case EEXIST:
			FUNC9(zhp->zfs_hdl, FUNC1(TEXT_DOMAIN,
			    "Key already loaded for '%s'."), FUNC10(zhp));
			break;
		case EBUSY:
			FUNC9(zhp->zfs_hdl, FUNC1(TEXT_DOMAIN,
			    "'%s' is busy."), FUNC10(zhp));
			break;
		case EACCES:
			correctible = B_TRUE;
			FUNC9(zhp->zfs_hdl, FUNC1(TEXT_DOMAIN,
			    "Incorrect key provided for '%s'."),
			    FUNC10(zhp));
			break;
		}
		goto error;
	}

	FUNC3(key_material);
	FUNC3(key_data);

	return (0);

error:
	FUNC8(zhp->zfs_hdl, EZFS_CRYPTOFAILED, errbuf);
	if (key_material != NULL) {
		FUNC3(key_material);
		key_material = NULL;
	}
	if (key_data != NULL) {
		FUNC3(key_data);
		key_data = NULL;
	}

	/*
	 * Here we decide if it is ok to allow the user to retry entering their
	 * key. The can_retry flag will be set if the user is entering their
	 * key from an interactive prompt. The correctable flag will only be
	 * set if an error that occurred could be corrected by retrying. Both
	 * flags are needed to allow the user to attempt key entry again
	 */
	attempts++;
	if (can_retry && correctible && attempts < MAX_KEY_PROMPT_ATTEMPTS)
		goto try_again;

	return (ret);
}