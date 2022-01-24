#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint_t ;
typedef  int uint8_t ;
struct TYPE_10__ {scalar_t__ cm_param_len; int /*<<< orphan*/ * cm_param; int /*<<< orphan*/  cm_type; } ;
typedef  TYPE_2__ crypto_mechanism_t ;
struct TYPE_11__ {int* ck_data; int /*<<< orphan*/  ck_length; int /*<<< orphan*/  ck_format; } ;
typedef  TYPE_3__ crypto_key_t ;
struct TYPE_9__ {char* iov_base; int iov_len; } ;
struct TYPE_12__ {int cd_length; TYPE_1__ cd_raw; scalar_t__ cd_offset; void* cd_format; } ;
typedef  TYPE_4__ crypto_data_t ;
typedef  int /*<<< orphan*/  crypto_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* CRYPTO_DATA_RAW ; 
 int /*<<< orphan*/  CRYPTO_KEY_RAW ; 
 int CRYPTO_SUCCESS ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SHA512_DIGEST_LENGTH ; 
 int /*<<< orphan*/  SUN_CKM_SHA512_HMAC ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(uint8_t *extract_key, uint8_t *info, uint_t info_len,
    uint8_t *out_buf, uint_t out_len)
{
	int ret;
	crypto_mechanism_t mech;
	crypto_context_t ctx;
	crypto_key_t key;
	crypto_data_t T_cd, info_cd, c_cd;
	uint_t i, T_len = 0, pos = 0;
	uint8_t c;
	uint_t N = (out_len + SHA512_DIGEST_LENGTH) / SHA512_DIGEST_LENGTH;
	uint8_t T[SHA512_DIGEST_LENGTH];

	if (N > 255)
		return (FUNC1(EINVAL));

	/* initialize HMAC mechanism */
	mech.cm_type = FUNC6(SUN_CKM_SHA512_HMAC);
	mech.cm_param = NULL;
	mech.cm_param_len = 0;

	/* initialize the salt as a crypto key */
	key.ck_format = CRYPTO_KEY_RAW;
	key.ck_length = FUNC0(SHA512_DIGEST_LENGTH);
	key.ck_data = extract_key;

	/* initialize crypto data for the input and output data */
	T_cd.cd_format = CRYPTO_DATA_RAW;
	T_cd.cd_offset = 0;
	T_cd.cd_raw.iov_base = (char *)T;

	c_cd.cd_format = CRYPTO_DATA_RAW;
	c_cd.cd_offset = 0;
	c_cd.cd_length = 1;
	c_cd.cd_raw.iov_base = (char *)&c;
	c_cd.cd_raw.iov_len = c_cd.cd_length;

	info_cd.cd_format = CRYPTO_DATA_RAW;
	info_cd.cd_offset = 0;
	info_cd.cd_length = info_len;
	info_cd.cd_raw.iov_base = (char *)info;
	info_cd.cd_raw.iov_len = info_cd.cd_length;

	for (i = 1; i <= N; i++) {
		c = i;

		T_cd.cd_length = T_len;
		T_cd.cd_raw.iov_len = T_cd.cd_length;

		ret = FUNC4(&mech, &key, NULL, &ctx, NULL);
		if (ret != CRYPTO_SUCCESS)
			return (FUNC1(EIO));

		ret = FUNC5(ctx, &T_cd, NULL);
		if (ret != CRYPTO_SUCCESS)
			return (FUNC1(EIO));

		ret = FUNC5(ctx, &info_cd, NULL);
		if (ret != CRYPTO_SUCCESS)
			return (FUNC1(EIO));

		ret = FUNC5(ctx, &c_cd, NULL);
		if (ret != CRYPTO_SUCCESS)
			return (FUNC1(EIO));

		T_len = SHA512_DIGEST_LENGTH;
		T_cd.cd_length = T_len;
		T_cd.cd_raw.iov_len = T_cd.cd_length;

		ret = FUNC3(ctx, &T_cd, NULL);
		if (ret != CRYPTO_SUCCESS)
			return (FUNC1(EIO));

		FUNC2(T, out_buf + pos,
		    (i != N) ? SHA512_DIGEST_LENGTH : (out_len - pos));
		pos += SHA512_DIGEST_LENGTH;
	}

	return (0);
}