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
typedef  int zfs_keylocation_t ;
typedef  int zfs_keyformat_t ;
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  scalar_t__ boolean_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int EINVAL ; 
 size_t MAX_PASSPHRASE_LEN ; 
 size_t MIN_PASSPHRASE_LEN ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 size_t WRAPPING_KEY_LEN ; 
#define  ZFS_KEYFORMAT_HEX 132 
#define  ZFS_KEYFORMAT_PASSPHRASE 131 
#define  ZFS_KEYFORMAT_RAW 130 
 int ZFS_KEYLOCATION_NONE ; 
#define  ZFS_KEYLOCATION_PROMPT 129 
#define  ZFS_KEYLOCATION_URI 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,int,scalar_t__,scalar_t__,scalar_t__**,size_t*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 scalar_t__ FUNC8 (char*,char*,size_t) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int FUNC10 (char*) ; 

__attribute__((used)) static int
FUNC11(libzfs_handle_t *hdl, boolean_t do_verify, boolean_t newkey,
    zfs_keyformat_t keyformat, char *keylocation, const char *fsname,
    uint8_t **km_out, size_t *kmlen_out, boolean_t *can_retry_out)
{
	int ret, i;
	zfs_keylocation_t keyloc = ZFS_KEYLOCATION_NONE;
	FILE *fd = NULL;
	uint8_t *km = NULL, *km2 = NULL;
	size_t kmlen, kmlen2;
	boolean_t can_retry = B_FALSE;

	/* verify and parse the keylocation */
	keyloc = FUNC10(keylocation);

	/* open the appropriate file descriptor */
	switch (keyloc) {
	case ZFS_KEYLOCATION_PROMPT:
		fd = stdin;
		if (FUNC6(FUNC2(fd))) {
			can_retry = B_TRUE;

			/* raw keys cannot be entered on the terminal */
			if (keyformat == ZFS_KEYFORMAT_RAW) {
				ret = EINVAL;
				FUNC9(hdl, FUNC0(TEXT_DOMAIN,
				    "Cannot enter raw keys on the terminal"));
				goto error;
			}
		}
		break;
	case ZFS_KEYLOCATION_URI:
		fd = FUNC3(&keylocation[7], "r");
		if (!fd) {
			ret = errno;
			errno = 0;
			FUNC9(hdl, FUNC0(TEXT_DOMAIN,
			    "Failed to open key material file"));
			goto error;
		}
		break;
	default:
		ret = EINVAL;
		FUNC9(hdl, FUNC0(TEXT_DOMAIN,
		    "Invalid keylocation."));
		goto error;
	}

	/* fetch the key material into the buffer */
	ret = FUNC5(fd, fsname, keyformat, B_FALSE, newkey,
	    &km, &kmlen);
	if (ret != 0)
		goto error;

	/* do basic validation of the key material */
	switch (keyformat) {
	case ZFS_KEYFORMAT_RAW:
		/* verify the key length is correct */
		if (kmlen < WRAPPING_KEY_LEN) {
			ret = EINVAL;
			FUNC9(hdl, FUNC0(TEXT_DOMAIN,
			    "Raw key too short (expected %u)."),
			    WRAPPING_KEY_LEN);
			goto error;
		}

		if (kmlen > WRAPPING_KEY_LEN) {
			ret = EINVAL;
			FUNC9(hdl, FUNC0(TEXT_DOMAIN,
			    "Raw key too long (expected %u)."),
			    WRAPPING_KEY_LEN);
			goto error;
		}
		break;
	case ZFS_KEYFORMAT_HEX:
		/* verify the key length is correct */
		if (kmlen < WRAPPING_KEY_LEN * 2) {
			ret = EINVAL;
			FUNC9(hdl, FUNC0(TEXT_DOMAIN,
			    "Hex key too short (expected %u)."),
			    WRAPPING_KEY_LEN * 2);
			goto error;
		}

		if (kmlen > WRAPPING_KEY_LEN * 2) {
			ret = EINVAL;
			FUNC9(hdl, FUNC0(TEXT_DOMAIN,
			    "Hex key too long (expected %u)."),
			    WRAPPING_KEY_LEN * 2);
			goto error;
		}

		/* check for invalid hex digits */
		for (i = 0; i < WRAPPING_KEY_LEN * 2; i++) {
			if (!FUNC7((char)km[i])) {
				ret = EINVAL;
				FUNC9(hdl, FUNC0(TEXT_DOMAIN,
				    "Invalid hex character detected."));
				goto error;
			}
		}
		break;
	case ZFS_KEYFORMAT_PASSPHRASE:
		/* verify the length is within bounds */
		if (kmlen > MAX_PASSPHRASE_LEN) {
			ret = EINVAL;
			FUNC9(hdl, FUNC0(TEXT_DOMAIN,
			    "Passphrase too long (max %u)."),
			    MAX_PASSPHRASE_LEN);
			goto error;
		}

		if (kmlen < MIN_PASSPHRASE_LEN) {
			ret = EINVAL;
			FUNC9(hdl, FUNC0(TEXT_DOMAIN,
			    "Passphrase too short (min %u)."),
			    MIN_PASSPHRASE_LEN);
			goto error;
		}
		break;
	default:
		/* can't happen, checked above */
		break;
	}

	if (do_verify && FUNC6(FUNC2(fd))) {
		ret = FUNC5(fd, fsname, keyformat, B_TRUE,
		    newkey, &km2, &kmlen2);
		if (ret != 0)
			goto error;

		if (kmlen2 != kmlen ||
		    (FUNC8((char *)km, (char *)km2, kmlen) != 0)) {
			ret = EINVAL;
			FUNC9(hdl, FUNC0(TEXT_DOMAIN,
			    "Provided keys do not match."));
			goto error;
		}
	}

	if (fd != stdin)
		FUNC1(fd);

	if (km2 != NULL)
		FUNC4(km2);

	*km_out = km;
	*kmlen_out = kmlen;
	if (can_retry_out != NULL)
		*can_retry_out = can_retry;

	return (0);

error:
	if (km != NULL)
		FUNC4(km);

	if (km2 != NULL)
		FUNC4(km2);

	if (fd != NULL && fd != stdin)
		FUNC1(fd);

	*km_out = NULL;
	*kmlen_out = 0;
	if (can_retry_out != NULL)
		*can_retry_out = can_retry;

	return (ret);
}