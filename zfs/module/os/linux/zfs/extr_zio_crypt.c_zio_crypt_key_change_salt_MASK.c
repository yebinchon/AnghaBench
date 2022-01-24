#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t zk_crypt; scalar_t__ zk_salt_count; int /*<<< orphan*/  zk_salt_lock; int /*<<< orphan*/ * zk_current_tmpl; int /*<<< orphan*/  zk_current_key; int /*<<< orphan*/  zk_salt; int /*<<< orphan*/  zk_current_keydata; int /*<<< orphan*/  zk_master_keydata; } ;
typedef  TYPE_1__ zio_crypt_key_t ;
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  crypto_mechanism_t ;
struct TYPE_5__ {int /*<<< orphan*/  ci_keylen; } ;

/* Variables and functions */
 int CRYPTO_SUCCESS ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  RW_WRITER ; 
 scalar_t__ ZFS_CURRENT_MAX_SALT_USES ; 
 int ZIO_DATA_SALT_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_2__* zio_crypt_table ; 

__attribute__((used)) static int
FUNC7(zio_crypt_key_t *key)
{
	int ret = 0;
	uint8_t salt[ZIO_DATA_SALT_LEN];
	crypto_mechanism_t mech;
	uint_t keydata_len = zio_crypt_table[key->zk_crypt].ci_keylen;

	/* generate a new salt */
	ret = FUNC4(salt, ZIO_DATA_SALT_LEN);
	if (ret != 0)
		goto error;

	FUNC5(&key->zk_salt_lock, RW_WRITER);

	/* someone beat us to the salt rotation, just unlock and return */
	if (key->zk_salt_count < ZFS_CURRENT_MAX_SALT_USES)
		goto out_unlock;

	/* derive the current key from the master key and the new salt */
	ret = FUNC3(key->zk_master_keydata, keydata_len, NULL, 0,
	    salt, ZIO_DATA_SALT_LEN, key->zk_current_keydata, keydata_len);
	if (ret != 0)
		goto out_unlock;

	/* assign the salt and reset the usage count */
	FUNC0(salt, key->zk_salt, ZIO_DATA_SALT_LEN);
	key->zk_salt_count = 0;

	/* destroy the old context template and create the new one */
	FUNC2(key->zk_current_tmpl);
	ret = FUNC1(&mech, &key->zk_current_key,
	    &key->zk_current_tmpl, KM_SLEEP);
	if (ret != CRYPTO_SUCCESS)
		key->zk_current_tmpl = NULL;

	FUNC6(&key->zk_salt_lock);

	return (0);

out_unlock:
	FUNC6(&key->zk_salt_lock);
error:
	return (ret);
}