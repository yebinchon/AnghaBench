#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  unsigned char uchar_t ;
typedef  int /*<<< orphan*/  sha1_hmac_ctx_t ;
typedef  int /*<<< orphan*/  crypto_req_handle_t ;
struct TYPE_9__ {scalar_t__ iov_base; } ;
struct TYPE_10__ {scalar_t__ cd_length; int cd_format; int /*<<< orphan*/  cd_offset; TYPE_1__ cd_raw; } ;
typedef  TYPE_2__ crypto_data_t ;
struct TYPE_11__ {int /*<<< orphan*/ * cc_provider_private; } ;
typedef  TYPE_3__ crypto_ctx_t ;
struct TYPE_12__ {scalar_t__ hc_mech_type; scalar_t__ hc_digest_len; int /*<<< orphan*/  hc_ocontext; int /*<<< orphan*/  hc_icontext; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CRYPTO_ARGUMENTS_BAD ; 
 int CRYPTO_BUFFER_TOO_SMALL ; 
#define  CRYPTO_DATA_RAW 129 
#define  CRYPTO_DATA_UIO 128 
 int CRYPTO_SUCCESS ; 
 TYPE_7__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int SHA1_DIGEST_LENGTH ; 
 scalar_t__ SHA1_HMAC_GEN_MECH_INFO_TYPE ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,scalar_t__,unsigned char*) ; 

__attribute__((used)) static int
FUNC8(crypto_ctx_t *ctx, crypto_data_t *mac, crypto_req_handle_t req)
{
	int ret = CRYPTO_SUCCESS;
	uchar_t digest[SHA1_DIGEST_LENGTH];
	uint32_t digest_len = SHA1_DIGEST_LENGTH;

	FUNC0(ctx->cc_provider_private != NULL);

	if (FUNC1(ctx)->hc_mech_type ==
	    SHA1_HMAC_GEN_MECH_INFO_TYPE)
		digest_len = FUNC1(ctx)->hc_digest_len;

	/*
	 * We need to just return the length needed to store the output.
	 * We should not destroy the context for the following cases.
	 */
	if ((mac->cd_length == 0) || (mac->cd_length < digest_len)) {
		mac->cd_length = digest_len;
		return (CRYPTO_BUFFER_TOO_SMALL);
	}

	/*
	 * Do a SHA1 final on the inner context.
	 */
	FUNC2(digest, &FUNC1(ctx)->hc_icontext);

	/*
	 * Do a SHA1 update on the outer context, feeding the inner
	 * digest as data.
	 */
	FUNC3(&FUNC1(ctx)->hc_ocontext, digest,
	    SHA1_DIGEST_LENGTH);

	/*
	 * Do a SHA1 final on the outer context, storing the computing
	 * digest in the users buffer.
	 */
	switch (mac->cd_format) {
	case CRYPTO_DATA_RAW:
		if (digest_len != SHA1_DIGEST_LENGTH) {
			/*
			 * The caller requested a short digest. Digest
			 * into a scratch buffer and return to
			 * the user only what was requested.
			 */
			FUNC2(digest,
			    &FUNC1(ctx)->hc_ocontext);
			FUNC4(digest, (unsigned char *)mac->cd_raw.iov_base +
			    mac->cd_offset, digest_len);
		} else {
			FUNC2((unsigned char *)mac->cd_raw.iov_base +
			    mac->cd_offset,
			    &FUNC1(ctx)->hc_ocontext);
		}
		break;
	case CRYPTO_DATA_UIO:
		ret = FUNC7(
		    &FUNC1(ctx)->hc_ocontext, mac,
		    digest_len, digest);
		break;
	default:
		ret = CRYPTO_ARGUMENTS_BAD;
	}

	if (ret == CRYPTO_SUCCESS) {
		mac->cd_length = digest_len;
	} else {
		mac->cd_length = 0;
	}

	FUNC5(ctx->cc_provider_private, sizeof (sha1_hmac_ctx_t));
	FUNC6(ctx->cc_provider_private, sizeof (sha1_hmac_ctx_t));
	ctx->cc_provider_private = NULL;

	return (ret);
}