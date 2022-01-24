#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  zb_objset; } ;
typedef  TYPE_1__ zbookmark_phys_t ;
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_8__ {int /*<<< orphan*/  dck_key; } ;
typedef  TYPE_2__ dsl_crypto_key_t ;
typedef  int /*<<< orphan*/  dmu_object_type_t ;
typedef  scalar_t__ boolean_t ;
typedef  int /*<<< orphan*/  abd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMU_OT_DNODE ; 
 int /*<<< orphan*/  DMU_OT_INTENT_LOG ; 
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  ECKSUM ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_FEATURE_ENCRYPTION ; 
 int /*<<< orphan*/  ZIO_DATA_IV_LEN ; 
 int /*<<< orphan*/  ZIO_DATA_MAC_LEN ; 
 int /*<<< orphan*/  ZIO_DATA_SALT_LEN ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC14 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ zio_injection_enabled ; 

int
FUNC15(boolean_t encrypt, spa_t *spa, const zbookmark_phys_t *zb,
    dmu_object_type_t ot, boolean_t dedup, boolean_t bswap, uint8_t *salt,
    uint8_t *iv, uint8_t *mac, uint_t datalen, abd_t *pabd, abd_t *cabd,
    boolean_t *no_crypt)
{
	int ret;
	dsl_crypto_key_t *dck = NULL;
	uint8_t *plainbuf = NULL, *cipherbuf = NULL;

	FUNC0(FUNC7(spa, SPA_FEATURE_ENCRYPTION));

	/* look up the key from the spa's keystore */
	ret = FUNC9(spa, zb->zb_objset, FTAG, &dck);
	if (ret != 0) {
		ret = FUNC1(EACCES);
		return (ret);
	}

	if (encrypt) {
		plainbuf = FUNC3(pabd, datalen);
		cipherbuf = FUNC2(cabd, datalen);
	} else {
		plainbuf = FUNC2(pabd, datalen);
		cipherbuf = FUNC3(cabd, datalen);
	}

	/*
	 * Both encryption and decryption functions need a salt for key
	 * generation and an IV. When encrypting a non-dedup block, we
	 * generate the salt and IV randomly to be stored by the caller. Dedup
	 * blocks perform a (more expensive) HMAC of the plaintext to obtain
	 * the salt and the IV. ZIL blocks have their salt and IV generated
	 * at allocation time in zio_alloc_zil(). On decryption, we simply use
	 * the provided values.
	 */
	if (encrypt && ot != DMU_OT_INTENT_LOG && !dedup) {
		ret = FUNC12(&dck->dck_key, salt);
		if (ret != 0)
			goto error;

		ret = FUNC10(iv);
		if (ret != 0)
			goto error;
	} else if (encrypt && dedup) {
		ret = FUNC11(&dck->dck_key,
		    plainbuf, datalen, iv, salt);
		if (ret != 0)
			goto error;
	}

	/* call lower level function to perform encryption / decryption */
	ret = FUNC13(encrypt, &dck->dck_key, ot, bswap, salt, iv,
	    mac, datalen, plainbuf, cipherbuf, no_crypt);

	/*
	 * Handle injected decryption faults. Unfortunately, we cannot inject
	 * faults for dnode blocks because we might trigger the panic in
	 * dbuf_prepare_encrypted_dnode_leaf(), which exists because syncing
	 * context is not prepared to handle malicious decryption failures.
	 */
	if (zio_injection_enabled && !encrypt && ot != DMU_OT_DNODE && ret == 0)
		ret = FUNC14(spa, zb, ot, ECKSUM);
	if (ret != 0)
		goto error;

	if (encrypt) {
		FUNC4(pabd, plainbuf, datalen);
		FUNC5(cabd, cipherbuf, datalen);
	} else {
		FUNC5(pabd, plainbuf, datalen);
		FUNC4(cabd, cipherbuf, datalen);
	}

	FUNC8(spa, dck, FTAG);

	return (0);

error:
	if (encrypt) {
		/* zero out any state we might have changed while encrypting */
		FUNC6(salt, ZIO_DATA_SALT_LEN);
		FUNC6(iv, ZIO_DATA_IV_LEN);
		FUNC6(mac, ZIO_DATA_MAC_LEN);
		FUNC4(pabd, plainbuf, datalen);
		FUNC5(cabd, cipherbuf, datalen);
	} else {
		FUNC5(pabd, plainbuf, datalen);
		FUNC4(cabd, cipherbuf, datalen);
	}

	FUNC8(spa, dck, FTAG);

	return (ret);
}