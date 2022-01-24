#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  pd_lock; } ;
typedef  TYPE_1__ kcf_provider_desc_t ;
struct TYPE_15__ {int cc_flags; int /*<<< orphan*/ * cc_provider_private; } ;
struct TYPE_14__ {TYPE_1__* kc_sw_prov_desc; TYPE_1__* kc_prov_desc; struct TYPE_14__* kc_secondctx; TYPE_3__ kc_glbl_ctx; } ;
typedef  TYPE_2__ kcf_context_t ;
typedef  TYPE_3__ crypto_ctx_t ;

/* Variables and functions */
 int CRYPTO_INIT_OPSTATE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  kcf_context_cache ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void
FUNC9(kcf_context_t *kcf_ctx)
{
	kcf_provider_desc_t *pd = kcf_ctx->kc_prov_desc;
	crypto_ctx_t *gctx = &kcf_ctx->kc_glbl_ctx;
	kcf_context_t *kcf_secondctx = kcf_ctx->kc_secondctx;

	/* Release the second context, if any */

	if (kcf_secondctx != NULL)
		FUNC0(kcf_secondctx);

	if (gctx->cc_provider_private != NULL) {
		FUNC7(&pd->pd_lock);
		if (!FUNC1(pd)) {
			/*
			 * Increment the provider's internal refcnt so it
			 * doesn't unregister from the framework while
			 * we're calling the entry point.
			 */
			FUNC3(pd);
			FUNC8(&pd->pd_lock);
			(void) FUNC2(pd, gctx);
			FUNC4(pd);
		} else {
			FUNC8(&pd->pd_lock);
		}
	}

	/* kcf_ctx->kc_prov_desc has a hold on pd */
	FUNC5(kcf_ctx->kc_prov_desc);

	/* check if this context is shared with a software provider */
	if ((gctx->cc_flags & CRYPTO_INIT_OPSTATE) &&
	    kcf_ctx->kc_sw_prov_desc != NULL) {
		FUNC5(kcf_ctx->kc_sw_prov_desc);
	}

	FUNC6(kcf_context_cache, kcf_ctx);
}