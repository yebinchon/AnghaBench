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
typedef  int zfs_keyformat_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int WRAPPING_KEY_LEN ; 
#define  ZFS_KEYFORMAT_HEX 130 
#define  ZFS_KEYFORMAT_PASSPHRASE 129 
#define  ZFS_KEYFORMAT_RAW 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(libzfs_handle_t *hdl, zfs_keyformat_t format, uint64_t iters,
    uint8_t *key_material, size_t key_material_len, uint64_t salt,
    uint8_t **key_out)
{
	int ret;
	uint8_t *key;

	*key_out = NULL;

	key = FUNC7(hdl, WRAPPING_KEY_LEN);
	if (!key)
		return (ENOMEM);

	switch (format) {
	case ZFS_KEYFORMAT_RAW:
		FUNC2(key_material, key, WRAPPING_KEY_LEN);
		break;
	case ZFS_KEYFORMAT_HEX:
		ret = FUNC5((char *)key_material,
		    WRAPPING_KEY_LEN * 2, key);
		if (ret != 0) {
			FUNC8(hdl, FUNC3(TEXT_DOMAIN,
			    "Invalid hex key provided."));
			goto error;
		}
		break;
	case ZFS_KEYFORMAT_PASSPHRASE:
		salt = FUNC0(salt);

		ret = FUNC1((char *)key_material,
		    FUNC6((char *)key_material), ((uint8_t *)&salt),
		    sizeof (uint64_t), iters, WRAPPING_KEY_LEN, key);
		if (ret != 1) {
			ret = EIO;
			FUNC8(hdl, FUNC3(TEXT_DOMAIN,
			    "Failed to generate key from passphrase."));
			goto error;
		}
		break;
	default:
		ret = EINVAL;
		goto error;
	}

	*key_out = key;
	return (0);

error:
	FUNC4(key);

	*key_out = NULL;
	return (ret);
}