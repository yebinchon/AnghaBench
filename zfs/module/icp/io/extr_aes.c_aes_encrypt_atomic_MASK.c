#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  void* off_t ;
typedef  int /*<<< orphan*/  gcm_ctx_t ;
typedef  int /*<<< orphan*/  ctr_ctx_t ;
typedef  int /*<<< orphan*/  crypto_spi_ctx_template_t ;
typedef  int /*<<< orphan*/  crypto_session_id_t ;
typedef  int /*<<< orphan*/  crypto_req_handle_t ;
typedef  int /*<<< orphan*/  crypto_provider_handle_t ;
struct TYPE_23__ {int cm_type; } ;
typedef  TYPE_1__ crypto_mechanism_t ;
typedef  int /*<<< orphan*/  crypto_key_t ;
struct TYPE_24__ {int cd_length; void* cd_offset; int cd_format; } ;
typedef  TYPE_2__ crypto_data_t ;
typedef  int /*<<< orphan*/  ccm_ctx_t ;
struct TYPE_25__ {size_t ac_mac_len; size_t ac_tag_len; scalar_t__ ac_remainder_len; int ac_flags; int ac_keysched_len; struct TYPE_25__* ac_keysched; } ;
typedef  TYPE_3__ aes_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  AES_BLOCK_LEN ; 
#define  AES_CCM_MECH_INFO_TYPE 133 
#define  AES_CTR_MECH_INFO_TYPE 132 
#define  AES_GCM_MECH_INFO_TYPE 131 
#define  AES_GMAC_MECH_INFO_TYPE 130 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  B_TRUE ; 
 int CRYPTO_ARGUMENTS_BAD ; 
 int CRYPTO_BUFFER_TOO_SMALL ; 
 int CRYPTO_DATA_LEN_RANGE ; 
#define  CRYPTO_DATA_RAW 129 
#define  CRYPTO_DATA_UIO 128 
 int CRYPTO_SUCCESS ; 
 int PROVIDER_OWNS_KEY_SCHEDULE ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aes_copy_block ; 
 int /*<<< orphan*/  aes_copy_block64 ; 
 int /*<<< orphan*/  aes_encrypt_block ; 
 int /*<<< orphan*/  aes_encrypt_contiguous_blocks ; 
 int /*<<< orphan*/  aes_xor_block ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_3__*,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int) ; 

__attribute__((used)) static int
FUNC12(crypto_provider_handle_t provider,
    crypto_session_id_t session_id, crypto_mechanism_t *mechanism,
    crypto_key_t *key, crypto_data_t *plaintext, crypto_data_t *ciphertext,
    crypto_spi_ctx_template_t template, crypto_req_handle_t req)
{
	aes_ctx_t aes_ctx;	/* on the stack */
	off_t saved_offset;
	size_t saved_length;
	size_t length_needed;
	int ret;

	FUNC0(plaintext, ciphertext);

	/*
	 * CTR, CCM, GCM, and GMAC modes do not require that plaintext
	 * be a multiple of AES block size.
	 */
	switch (mechanism->cm_type) {
	case AES_CTR_MECH_INFO_TYPE:
	case AES_CCM_MECH_INFO_TYPE:
	case AES_GCM_MECH_INFO_TYPE:
	case AES_GMAC_MECH_INFO_TYPE:
		break;
	default:
		if ((plaintext->cd_length & (AES_BLOCK_LEN - 1)) != 0)
			return (CRYPTO_DATA_LEN_RANGE);
	}

	if ((ret = FUNC2(mechanism, NULL, 0)) != CRYPTO_SUCCESS)
		return (ret);

	FUNC4(&aes_ctx, sizeof (aes_ctx_t));

	ret = FUNC3(&aes_ctx, template, mechanism, key,
	    FUNC6(req), B_TRUE);
	if (ret != CRYPTO_SUCCESS)
		return (ret);

	switch (mechanism->cm_type) {
	case AES_CCM_MECH_INFO_TYPE:
		length_needed = plaintext->cd_length + aes_ctx.ac_mac_len;
		break;
	case AES_GMAC_MECH_INFO_TYPE:
		if (plaintext->cd_length != 0)
			return (CRYPTO_ARGUMENTS_BAD);
		/* FALLTHRU */
	case AES_GCM_MECH_INFO_TYPE:
		length_needed = plaintext->cd_length + aes_ctx.ac_tag_len;
		break;
	default:
		length_needed = plaintext->cd_length;
	}

	/* return size of buffer needed to store output */
	if (ciphertext->cd_length < length_needed) {
		ciphertext->cd_length = length_needed;
		ret = CRYPTO_BUFFER_TOO_SMALL;
		goto out;
	}

	saved_offset = ciphertext->cd_offset;
	saved_length = ciphertext->cd_length;

	/*
	 * Do an update on the specified input data.
	 */
	switch (plaintext->cd_format) {
	case CRYPTO_DATA_RAW:
		ret = FUNC7(&aes_ctx, plaintext, ciphertext,
		    aes_encrypt_contiguous_blocks, aes_copy_block64);
		break;
	case CRYPTO_DATA_UIO:
		ret = FUNC8(&aes_ctx, plaintext, ciphertext,
		    aes_encrypt_contiguous_blocks, aes_copy_block64);
		break;
	default:
		ret = CRYPTO_ARGUMENTS_BAD;
	}

	if (ret == CRYPTO_SUCCESS) {
		if (mechanism->cm_type == AES_CCM_MECH_INFO_TYPE) {
			ret = FUNC5((ccm_ctx_t *)&aes_ctx,
			    ciphertext, AES_BLOCK_LEN, aes_encrypt_block,
			    aes_xor_block);
			if (ret != CRYPTO_SUCCESS)
				goto out;
			FUNC1(aes_ctx.ac_remainder_len == 0);
		} else if (mechanism->cm_type == AES_GCM_MECH_INFO_TYPE ||
		    mechanism->cm_type == AES_GMAC_MECH_INFO_TYPE) {
			ret = FUNC10((gcm_ctx_t *)&aes_ctx,
			    ciphertext, AES_BLOCK_LEN, aes_encrypt_block,
			    aes_copy_block, aes_xor_block);
			if (ret != CRYPTO_SUCCESS)
				goto out;
			FUNC1(aes_ctx.ac_remainder_len == 0);
		} else if (mechanism->cm_type == AES_CTR_MECH_INFO_TYPE) {
			if (aes_ctx.ac_remainder_len > 0) {
				ret = FUNC9((ctr_ctx_t *)&aes_ctx,
				    ciphertext, aes_encrypt_block);
				if (ret != CRYPTO_SUCCESS)
					goto out;
			}
		} else {
			FUNC1(aes_ctx.ac_remainder_len == 0);
		}

		if (plaintext != ciphertext) {
			ciphertext->cd_length =
			    ciphertext->cd_offset - saved_offset;
		}
	} else {
		ciphertext->cd_length = saved_length;
	}
	ciphertext->cd_offset = saved_offset;

out:
	if (aes_ctx.ac_flags & PROVIDER_OWNS_KEY_SCHEDULE) {
		FUNC4(aes_ctx.ac_keysched, aes_ctx.ac_keysched_len);
		FUNC11(aes_ctx.ac_keysched, aes_ctx.ac_keysched_len);
	}

	return (ret);
}