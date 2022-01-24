#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kcf_req_params_t ;
struct TYPE_23__ {scalar_t__ pd_prov_type; } ;
typedef  TYPE_1__ kcf_provider_desc_t ;
typedef  int /*<<< orphan*/  kcf_context_t ;
typedef  int /*<<< orphan*/  crypto_spi_ctx_template_t ;
typedef  int /*<<< orphan*/  crypto_session_id_t ;
typedef  TYPE_1__* crypto_provider_t ;
struct TYPE_24__ {int /*<<< orphan*/  cm_type; } ;
typedef  TYPE_3__ crypto_mechanism_t ;
typedef  int /*<<< orphan*/  crypto_key_t ;
struct TYPE_25__ {scalar_t__ cc_framework_private; } ;
typedef  TYPE_4__ crypto_ctx_t ;
typedef  scalar_t__ crypto_context_t ;
typedef  int /*<<< orphan*/  crypto_call_req_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CRYPTO_FG_MAC ; 
 int CRYPTO_HOST_MEMORY ; 
 scalar_t__ CRYPTO_LOGICAL_PROVIDER ; 
 int /*<<< orphan*/  CRYPTO_MECH_INVALID ; 
 int CRYPTO_QUEUED ; 
 int CRYPTO_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KCF_OP_INIT ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (TYPE_1__*,TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__**,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC12 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_1__*,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC14(crypto_provider_t provider, crypto_session_id_t sid,
    crypto_mechanism_t *mech, crypto_key_t *key, crypto_spi_ctx_template_t tmpl,
    crypto_context_t *ctxp, crypto_call_req_t *crq)
{
	int rv;
	crypto_ctx_t *ctx;
	kcf_req_params_t params;
	kcf_provider_desc_t *pd = provider;
	kcf_provider_desc_t *real_provider = pd;

	FUNC0(FUNC6(pd));

	if (pd->pd_prov_type == CRYPTO_LOGICAL_PROVIDER) {
		rv = FUNC11(mech->cm_type,
		    CRYPTO_MECH_INVALID, FUNC2(crq), pd,
		    &real_provider, CRYPTO_FG_MAC);

		if (rv != CRYPTO_SUCCESS)
			return (rv);
	}

	/* Allocate and initialize the canonical context */
	if ((ctx = FUNC12(crq, real_provider, sid)) == NULL) {
		if (pd->pd_prov_type == CRYPTO_LOGICAL_PROVIDER)
			FUNC7(real_provider);
		return (CRYPTO_HOST_MEMORY);
	}

	/* The fast path for SW providers. */
	if (FUNC1(crq, pd)) {
		crypto_mechanism_t lmech;

		lmech = *mech;
		FUNC8(mech->cm_type, real_provider, &lmech);
		rv = FUNC5(real_provider, ctx, &lmech, key, tmpl,
		    FUNC9(crq));
		FUNC4(pd, rv);
	} else {
		FUNC10(&params, KCF_OP_INIT, sid, mech, key,
		    NULL, NULL, tmpl);
		rv = FUNC13(real_provider, ctx, crq, &params,
		    B_FALSE);
	}

	if (pd->pd_prov_type == CRYPTO_LOGICAL_PROVIDER)
		FUNC7(real_provider);

	if ((rv == CRYPTO_SUCCESS) || (rv == CRYPTO_QUEUED))
		*ctxp = (crypto_context_t)ctx;
	else {
		/* Release the hold done in kcf_new_ctx(). */
		FUNC3((kcf_context_t *)ctx->cc_framework_private);
	}

	return (rv);
}