#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_4__ {int /*<<< orphan*/  dck_key; } ;
typedef  TYPE_1__ dsl_crypto_key_t ;
typedef  scalar_t__ boolean_t ;
typedef  int /*<<< orphan*/  abd_t ;

/* Variables and functions */
 int /*<<< orphan*/  ECKSUM ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ZIO_DATA_MAC_LEN ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

int
FUNC8(boolean_t generate, spa_t *spa, uint64_t dsobj, abd_t *abd,
    uint_t datalen, uint8_t *mac)
{
	int ret;
	dsl_crypto_key_t *dck = NULL;
	uint8_t *buf = FUNC1(abd, datalen);
	uint8_t digestbuf[ZIO_DATA_MAC_LEN];

	/* look up the key from the spa's keystore */
	ret = FUNC6(spa, dsobj, FTAG, &dck);
	if (ret != 0)
		goto error;

	/* perform the hmac */
	ret = FUNC7(&dck->dck_key, buf, datalen,
	    digestbuf, ZIO_DATA_MAC_LEN);
	if (ret != 0)
		goto error;

	FUNC2(abd, buf, datalen);
	FUNC5(spa, dck, FTAG);

	/*
	 * Truncate and fill in mac buffer if we were asked to generate a MAC.
	 * Otherwise verify that the MAC matched what we expected.
	 */
	if (generate) {
		FUNC4(digestbuf, mac, ZIO_DATA_MAC_LEN);
		return (0);
	}

	if (FUNC3(digestbuf, mac, ZIO_DATA_MAC_LEN) != 0)
		return (FUNC0(ECKSUM));

	return (0);

error:
	if (dck != NULL)
		FUNC5(spa, dck, FTAG);
	FUNC2(abd, buf, datalen);
	return (ret);
}