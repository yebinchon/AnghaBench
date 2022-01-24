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
typedef  int /*<<< orphan*/  zio_crypt_key_t ;
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  dmu_object_type_t ;
typedef  scalar_t__ boolean_t ;
typedef  int /*<<< orphan*/  abd_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,void*,scalar_t__*) ; 

int
FUNC5(boolean_t encrypt, zio_crypt_key_t *key, dmu_object_type_t ot,
    boolean_t byteswap, uint8_t *salt, uint8_t *iv, uint8_t *mac,
    uint_t datalen, abd_t *pabd, abd_t *cabd, boolean_t *no_crypt)
{
	int ret;
	void *ptmp, *ctmp;

	if (encrypt) {
		ptmp = FUNC1(pabd, datalen);
		ctmp = FUNC0(cabd, datalen);
	} else {
		ptmp = FUNC0(pabd, datalen);
		ctmp = FUNC1(cabd, datalen);
	}

	ret = FUNC4(encrypt, key, ot, byteswap, salt, iv, mac,
	    datalen, ptmp, ctmp, no_crypt);
	if (ret != 0)
		goto error;

	if (encrypt) {
		FUNC2(pabd, ptmp, datalen);
		FUNC3(cabd, ctmp, datalen);
	} else {
		FUNC3(pabd, ptmp, datalen);
		FUNC2(cabd, ctmp, datalen);
	}

	return (0);

error:
	if (encrypt) {
		FUNC2(pabd, ptmp, datalen);
		FUNC3(cabd, ctmp, datalen);
	} else {
		FUNC3(pabd, ptmp, datalen);
		FUNC2(cabd, ctmp, datalen);
	}

	return (ret);
}