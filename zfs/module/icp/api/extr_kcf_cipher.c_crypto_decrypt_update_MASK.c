#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kcf_req_params_t ;
struct TYPE_20__ {scalar_t__ pd_prov_type; } ;
typedef  TYPE_2__ kcf_provider_desc_t ;
struct TYPE_21__ {TYPE_2__* kc_sw_prov_desc; TYPE_1__* kc_mech; TYPE_2__* kc_prov_desc; } ;
typedef  TYPE_3__ kcf_context_t ;
struct TYPE_22__ {scalar_t__ cd_length; } ;
typedef  TYPE_4__ crypto_data_t ;
struct TYPE_23__ {int cc_flags; int /*<<< orphan*/  cc_session; scalar_t__ cc_framework_private; } ;
typedef  TYPE_5__ crypto_ctx_t ;
typedef  scalar_t__ crypto_context_t ;
typedef  int /*<<< orphan*/  crypto_call_req_t ;
struct TYPE_19__ {scalar_t__ me_threshold; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int CRYPTO_INVALID_CONTEXT ; 
 scalar_t__ CRYPTO_LOGICAL_PROVIDER ; 
 int CRYPTO_USE_OPSTATE ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  KCF_OP_UPDATE ; 
 int FUNC3 (TYPE_2__*,TYPE_5__*,TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_2__*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC7(crypto_context_t context, crypto_data_t *ciphertext,
    crypto_data_t *plaintext, crypto_call_req_t *cr)
{
	crypto_ctx_t *ctx = (crypto_ctx_t *)context;
	kcf_context_t *kcf_ctx;
	kcf_provider_desc_t *pd;
	int error;
	kcf_req_params_t params;

	if ((ctx == NULL) ||
	    ((kcf_ctx = (kcf_context_t *)ctx->cc_framework_private) == NULL) ||
	    ((pd = kcf_ctx->kc_prov_desc) == NULL)) {
		return (CRYPTO_INVALID_CONTEXT);
	}

	FUNC0(pd->pd_prov_type != CRYPTO_LOGICAL_PROVIDER);

	/* The fast path for SW providers. */
	if (FUNC1(cr, pd)) {
		error = FUNC3(pd, ctx, ciphertext,
		    plaintext, NULL);
		FUNC4(pd, error);
		return (error);
	}

	/* Check if we should use a software provider for small jobs */
	if ((ctx->cc_flags & CRYPTO_USE_OPSTATE) && cr == NULL) {
		if (ciphertext->cd_length < kcf_ctx->kc_mech->me_threshold &&
		    kcf_ctx->kc_sw_prov_desc != NULL &&
		    FUNC2(kcf_ctx->kc_sw_prov_desc)) {
			pd = kcf_ctx->kc_sw_prov_desc;
		}
	}

	FUNC5(&params, KCF_OP_UPDATE,
	    ctx->cc_session, NULL, NULL, ciphertext, plaintext, NULL);
	error = FUNC6(pd, ctx, cr, &params, B_FALSE);

	return (error);
}