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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  DSL_CRYPTO_KEY_CRYPTO_SUITE ; 
 int /*<<< orphan*/  DSL_CRYPTO_KEY_GUID ; 
 int /*<<< orphan*/  DSL_CRYPTO_KEY_HMAC_KEY ; 
 int /*<<< orphan*/  DSL_CRYPTO_KEY_IV ; 
 int /*<<< orphan*/  DSL_CRYPTO_KEY_MAC ; 
 int /*<<< orphan*/  DSL_CRYPTO_KEY_MASTER_KEY ; 
 int /*<<< orphan*/  DSL_CRYPTO_KEY_ROOT_DDOBJ ; 
 int MASTER_KEY_MAX_LEN ; 
 int SHA512_HMAC_KEYLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int WRAPPING_IV_LEN ; 
 int WRAPPING_MAC_LEN ; 
 int /*<<< orphan*/  ZFS_PROP_KEYFORMAT ; 
 int /*<<< orphan*/  ZFS_PROP_PBKDF2_ITERS ; 
 int /*<<< orphan*/  ZFS_PROP_PBKDF2_SALT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(objset_t *mos, uint64_t dckobj, uint64_t crypt,
    uint64_t root_ddobj, uint64_t guid, uint8_t *iv, uint8_t *mac,
    uint8_t *keydata, uint8_t *hmac_keydata, uint64_t keyformat,
    uint64_t salt, uint64_t iters, dmu_tx_t *tx)
{
	FUNC0(FUNC1(mos, dckobj, DSL_CRYPTO_KEY_CRYPTO_SUITE, 8, 1,
	    &crypt, tx));
	FUNC0(FUNC1(mos, dckobj, DSL_CRYPTO_KEY_ROOT_DDOBJ, 8, 1,
	    &root_ddobj, tx));
	FUNC0(FUNC1(mos, dckobj, DSL_CRYPTO_KEY_GUID, 8, 1,
	    &guid, tx));
	FUNC0(FUNC1(mos, dckobj, DSL_CRYPTO_KEY_IV, 1, WRAPPING_IV_LEN,
	    iv, tx));
	FUNC0(FUNC1(mos, dckobj, DSL_CRYPTO_KEY_MAC, 1, WRAPPING_MAC_LEN,
	    mac, tx));
	FUNC0(FUNC1(mos, dckobj, DSL_CRYPTO_KEY_MASTER_KEY, 1,
	    MASTER_KEY_MAX_LEN, keydata, tx));
	FUNC0(FUNC1(mos, dckobj, DSL_CRYPTO_KEY_HMAC_KEY, 1,
	    SHA512_HMAC_KEYLEN, hmac_keydata, tx));
	FUNC0(FUNC1(mos, dckobj, FUNC2(ZFS_PROP_KEYFORMAT),
	    8, 1, &keyformat, tx));
	FUNC0(FUNC1(mos, dckobj, FUNC2(ZFS_PROP_PBKDF2_SALT),
	    8, 1, &salt, tx));
	FUNC0(FUNC1(mos, dckobj, FUNC2(ZFS_PROP_PBKDF2_ITERS),
	    8, 1, &iters, tx));
}