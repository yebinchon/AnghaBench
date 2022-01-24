#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  crypto_data_t ;
struct TYPE_2__ {int ac_flags; } ;
typedef  TYPE_1__ aes_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  AES_BLOCK_LEN ; 
 int CBC_MODE ; 
 int CCM_MODE ; 
 int CRYPTO_DATA_LEN_RANGE ; 
 int CRYPTO_ENCRYPTED_DATA_LEN_RANGE ; 
 int CTR_MODE ; 
 int GCM_MODE ; 
 int GMAC_MODE ; 
 int /*<<< orphan*/  aes_copy_block ; 
 int /*<<< orphan*/  aes_decrypt_block ; 
 int /*<<< orphan*/  aes_encrypt_block ; 
 int /*<<< orphan*/  aes_xor_block ; 
 int FUNC0 (void*,char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (void*,char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (void*,char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (void*,char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (void*,char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(void *ctx, char *data, size_t length,
    crypto_data_t *out)
{
	aes_ctx_t *aes_ctx = ctx;
	int rv;

	if (aes_ctx->ac_flags & CTR_MODE) {
		rv = FUNC2(ctx, data, length, out,
		    AES_BLOCK_LEN, aes_encrypt_block, aes_xor_block);
		if (rv == CRYPTO_DATA_LEN_RANGE)
			rv = CRYPTO_ENCRYPTED_DATA_LEN_RANGE;
	} else if (aes_ctx->ac_flags & CCM_MODE) {
		rv = FUNC1(ctx, data, length,
		    out, AES_BLOCK_LEN, aes_encrypt_block, aes_copy_block,
		    aes_xor_block);
	} else if (aes_ctx->ac_flags & (GCM_MODE|GMAC_MODE)) {
		rv = FUNC4(ctx, data, length,
		    out, AES_BLOCK_LEN, aes_encrypt_block, aes_copy_block,
		    aes_xor_block);
	} else if (aes_ctx->ac_flags & CBC_MODE) {
		rv = FUNC0(ctx, data, length, out,
		    AES_BLOCK_LEN, aes_decrypt_block, aes_copy_block,
		    aes_xor_block);
	} else {
		rv = FUNC3(ctx, data, length, out,
		    AES_BLOCK_LEN, aes_decrypt_block);
		if (rv == CRYPTO_DATA_LEN_RANGE)
			rv = CRYPTO_ENCRYPTED_DATA_LEN_RANGE;
	}
	return (rv);
}