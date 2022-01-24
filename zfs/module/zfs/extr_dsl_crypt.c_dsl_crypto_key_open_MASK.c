#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_10__ {int /*<<< orphan*/  wk_key; } ;
typedef  TYPE_1__ dsl_wrapping_key_t ;
struct TYPE_11__ {int /*<<< orphan*/  dck_holds; int /*<<< orphan*/  dck_obj; TYPE_1__* dck_wkey; int /*<<< orphan*/  dck_key; } ;
typedef  TYPE_2__ dsl_crypto_key_t ;

/* Variables and functions */
 int /*<<< orphan*/  DSL_CRYPTO_KEY_CRYPTO_SUITE ; 
 int /*<<< orphan*/  DSL_CRYPTO_KEY_GUID ; 
 int /*<<< orphan*/  DSL_CRYPTO_KEY_HMAC_KEY ; 
 int /*<<< orphan*/  DSL_CRYPTO_KEY_IV ; 
 int /*<<< orphan*/  DSL_CRYPTO_KEY_MAC ; 
 int /*<<< orphan*/  DSL_CRYPTO_KEY_MASTER_KEY ; 
 int /*<<< orphan*/  DSL_CRYPTO_KEY_VERSION ; 
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int MASTER_KEY_MAX_LEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SHA512_HMAC_KEYLEN ; 
 int WRAPPING_IV_LEN ; 
 int WRAPPING_MAC_LEN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 TYPE_2__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(objset_t *mos, dsl_wrapping_key_t *wkey,
    uint64_t dckobj, void *tag, dsl_crypto_key_t **dck_out)
{
	int ret;
	uint64_t crypt = 0, guid = 0, version = 0;
	uint8_t raw_keydata[MASTER_KEY_MAX_LEN];
	uint8_t raw_hmac_keydata[SHA512_HMAC_KEYLEN];
	uint8_t iv[WRAPPING_IV_LEN];
	uint8_t mac[WRAPPING_MAC_LEN];
	dsl_crypto_key_t *dck;

	/* allocate and initialize the key */
	dck = FUNC4(sizeof (dsl_crypto_key_t), KM_SLEEP);
	if (!dck)
		return (FUNC0(ENOMEM));

	/* fetch all of the values we need from the ZAP */
	ret = FUNC5(mos, dckobj, DSL_CRYPTO_KEY_CRYPTO_SUITE, 8, 1,
	    &crypt);
	if (ret != 0)
		goto error;

	ret = FUNC5(mos, dckobj, DSL_CRYPTO_KEY_GUID, 8, 1, &guid);
	if (ret != 0)
		goto error;

	ret = FUNC5(mos, dckobj, DSL_CRYPTO_KEY_MASTER_KEY, 1,
	    MASTER_KEY_MAX_LEN, raw_keydata);
	if (ret != 0)
		goto error;

	ret = FUNC5(mos, dckobj, DSL_CRYPTO_KEY_HMAC_KEY, 1,
	    SHA512_HMAC_KEYLEN, raw_hmac_keydata);
	if (ret != 0)
		goto error;

	ret = FUNC5(mos, dckobj, DSL_CRYPTO_KEY_IV, 1, WRAPPING_IV_LEN,
	    iv);
	if (ret != 0)
		goto error;

	ret = FUNC5(mos, dckobj, DSL_CRYPTO_KEY_MAC, 1, WRAPPING_MAC_LEN,
	    mac);
	if (ret != 0)
		goto error;

	/* the initial on-disk format for encryption did not have a version */
	(void) FUNC5(mos, dckobj, DSL_CRYPTO_KEY_VERSION, 8, 1, &version);

	/*
	 * Unwrap the keys. If there is an error return EACCES to indicate
	 * an authentication failure.
	 */
	ret = FUNC8(&wkey->wk_key, crypt, version, guid,
	    raw_keydata, raw_hmac_keydata, iv, mac, &dck->dck_key);
	if (ret != 0) {
		ret = FUNC0(EACCES);
		goto error;
	}

	/* finish initializing the dsl_crypto_key_t */
	FUNC7(&dck->dck_holds);
	FUNC2(wkey, dck);
	dck->dck_wkey = wkey;
	dck->dck_obj = dckobj;
	FUNC6(&dck->dck_holds, tag);

	*dck_out = dck;
	return (0);

error:
	if (dck != NULL) {
		FUNC1(dck, sizeof (dsl_crypto_key_t));
		FUNC3(dck, sizeof (dsl_crypto_key_t));
	}

	*dck_out = NULL;
	return (ret);
}