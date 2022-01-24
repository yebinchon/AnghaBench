#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  crypto_req_handle_t ;
struct TYPE_9__ {scalar_t__ cd_length; } ;
typedef  TYPE_1__ crypto_data_t ;
typedef  int /*<<< orphan*/  crypto_ctx_t ;
struct TYPE_10__ {int /*<<< orphan*/  sc_digest_bitlen; } ;
typedef  int /*<<< orphan*/ * SKEIN_CTX_LVALUE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int CRYPTO_BUFFER_TOO_SMALL ; 
 int CRYPTO_SUCCESS ; 
 TYPE_6__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(crypto_ctx_t *ctx, crypto_data_t *data, crypto_data_t *digest,
    crypto_req_handle_t req)
{
	int error = CRYPTO_SUCCESS;

	FUNC0(FUNC2(ctx) != NULL);

	if (digest->cd_length <
	    FUNC1(FUNC2(ctx)->sc_digest_bitlen)) {
		digest->cd_length =
		    FUNC1(FUNC2(ctx)->sc_digest_bitlen);
		return (CRYPTO_BUFFER_TOO_SMALL);
	}

	error = FUNC6(ctx, data, req);
	if (error != CRYPTO_SUCCESS) {
		FUNC3(FUNC2(ctx), sizeof (*FUNC2(ctx)));
		FUNC4(FUNC2(ctx), sizeof (*FUNC2(ctx)));
		SKEIN_CTX_LVALUE(ctx) = NULL;
		digest->cd_length = 0;
		return (error);
	}
	error = FUNC5(ctx, digest, req);

	return (error);
}