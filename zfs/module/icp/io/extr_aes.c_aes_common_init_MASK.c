#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  crypto_spi_ctx_template_t ;
typedef  int /*<<< orphan*/  crypto_req_handle_t ;
typedef  int /*<<< orphan*/  crypto_mechanism_t ;
struct TYPE_6__ {scalar_t__ ck_format; } ;
typedef  TYPE_1__ crypto_key_t ;
struct TYPE_7__ {int /*<<< orphan*/ * cc_provider_private; } ;
typedef  TYPE_2__ crypto_ctx_t ;
typedef  int /*<<< orphan*/  boolean_t ;
typedef  int /*<<< orphan*/  aes_ctx_t ;

/* Variables and functions */
 scalar_t__ CRYPTO_KEY_RAW ; 
 int CRYPTO_KEY_TYPE_INCONSISTENT ; 
 int CRYPTO_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(crypto_ctx_t *ctx, crypto_mechanism_t *mechanism,
    crypto_key_t *key, crypto_spi_ctx_template_t template,
    crypto_req_handle_t req, boolean_t is_encrypt_init)
{
	aes_ctx_t *aes_ctx;
	int rv;
	int kmflag;

	/*
	 * Only keys by value are supported by this module.
	 */
	if (key->ck_format != CRYPTO_KEY_RAW) {
		return (CRYPTO_KEY_TYPE_INCONSISTENT);
	}

	kmflag = FUNC3(req);
	if ((rv = FUNC0(mechanism, &aes_ctx, kmflag))
	    != CRYPTO_SUCCESS)
		return (rv);

	rv = FUNC1(aes_ctx, template, mechanism, key, kmflag,
	    is_encrypt_init);
	if (rv != CRYPTO_SUCCESS) {
		FUNC2(aes_ctx);
		return (rv);
	}

	ctx->cc_provider_private = aes_ctx;

	return (CRYPTO_SUCCESS);
}