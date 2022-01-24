#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  sc_digest_bitlen; int /*<<< orphan*/  sc_mech_type; } ;
typedef  TYPE_1__ skein_ctx_t ;
struct TYPE_10__ {int /*<<< orphan*/  cm_type; } ;
typedef  TYPE_2__ crypto_mechanism_t ;
struct TYPE_11__ {scalar_t__ ck_format; int /*<<< orphan*/  ck_length; int /*<<< orphan*/  ck_data; } ;
typedef  TYPE_3__ crypto_key_t ;

/* Variables and functions */
 int CRYPTO_ARGUMENTS_BAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CRYPTO_KEY_RAW ; 
 int CRYPTO_MECHANISM_INVALID ; 
 int CRYPTO_SUCCESS ; 
 int /*<<< orphan*/  InitExt ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(skein_ctx_t *ctx, crypto_mechanism_t *mechanism,
    crypto_key_t *key)
{
	int error;

	if (!FUNC2(mechanism->cm_type))
		return (CRYPTO_MECHANISM_INVALID);
	if (key->ck_format != CRYPTO_KEY_RAW)
		return (CRYPTO_ARGUMENTS_BAD);
	ctx->sc_mech_type = mechanism->cm_type;
	error = FUNC3(mechanism, &ctx->sc_digest_bitlen);
	if (error != CRYPTO_SUCCESS)
		return (error);
	FUNC1(ctx, InitExt, ctx->sc_digest_bitlen, 0, key->ck_data,
	    FUNC0(key->ck_length));

	return (CRYPTO_SUCCESS);
}