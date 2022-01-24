#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ sn_provider; scalar_t__ an_provider; scalar_t__ an_is_my_turn; int /*<<< orphan*/  an_params; int /*<<< orphan*/  an_lock; void* an_state; int /*<<< orphan*/  an_turn_cv; TYPE_4__* an_context; int /*<<< orphan*/ * sn_params; TYPE_1__* sn_context; int /*<<< orphan*/  sn_lock; void* sn_state; } ;
typedef  TYPE_2__ kcf_sreq_node_t ;
struct TYPE_13__ {scalar_t__ pd_state; int /*<<< orphan*/  pd_lock; int /*<<< orphan*/  pd_resume_cv; } ;
typedef  TYPE_3__ kcf_provider_desc_t ;
struct TYPE_14__ {scalar_t__ kc_prov_desc; int /*<<< orphan*/  kc_glbl_ctx; } ;
typedef  TYPE_4__ kcf_context_t ;
typedef  scalar_t__ kcf_call_type_t ;
typedef  TYPE_2__ kcf_areq_node_t ;
typedef  int /*<<< orphan*/  crypto_ctx_t ;
struct TYPE_11__ {int /*<<< orphan*/  kc_glbl_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ B_FALSE ; 
 scalar_t__ CRYPTO_ASYNCH ; 
 int CRYPTO_DEVICE_ERROR ; 
 int CRYPTO_QUEUED ; 
 scalar_t__ CRYPTO_SYNCH ; 
 scalar_t__ FUNC1 (void*) ; 
 scalar_t__ KCF_PROV_BUSY ; 
 scalar_t__ KCF_PROV_FAILED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 void* REQ_INPROGRESS ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(void *ireq)
{
	int error = 0;
	crypto_ctx_t *ctx;
	kcf_call_type_t ctype;
	kcf_provider_desc_t *pd;
	kcf_areq_node_t *areq = (kcf_areq_node_t *)ireq;
	kcf_sreq_node_t *sreq = (kcf_sreq_node_t *)ireq;

	pd = ((ctype = FUNC1(ireq)) == CRYPTO_SYNCH) ?
	    sreq->sn_provider : areq->an_provider;

	/*
	 * Wait if flow control is in effect for the provider. A
	 * CRYPTO_PROVIDER_READY or CRYPTO_PROVIDER_FAILED
	 * notification will signal us. We also get signaled if
	 * the provider is unregistering.
	 */
	if (pd->pd_state == KCF_PROV_BUSY) {
		FUNC8(&pd->pd_lock);
		while (pd->pd_state == KCF_PROV_BUSY)
			FUNC5(&pd->pd_resume_cv, &pd->pd_lock);
		FUNC9(&pd->pd_lock);
	}

	/*
	 * Bump the internal reference count while the request is being
	 * processed. This is how we know when it's safe to unregister
	 * a provider. This step must precede the pd_state check below.
	 */
	FUNC2(pd);

	/*
	 * Fail the request if the provider has failed. We return a
	 * recoverable error and the notified clients attempt any
	 * recovery. For async clients this is done in kcf_aop_done()
	 * and for sync clients it is done in the k-api routines.
	 */
	if (pd->pd_state >= KCF_PROV_FAILED) {
		error = CRYPTO_DEVICE_ERROR;
		goto bail;
	}

	if (ctype == CRYPTO_SYNCH) {
		FUNC8(&sreq->sn_lock);
		sreq->sn_state = REQ_INPROGRESS;
		FUNC9(&sreq->sn_lock);

		ctx = sreq->sn_context ? &sreq->sn_context->kc_glbl_ctx : NULL;
		error = FUNC4(sreq->sn_provider, ctx,
		    sreq->sn_params, sreq);
	} else {
		kcf_context_t *ictx;
		FUNC0(ctype == CRYPTO_ASYNCH);

		/*
		 * We are in the per-hardware provider thread context and
		 * hence can sleep. Note that the caller would have done
		 * a taskq_dispatch(..., TQ_NOSLEEP) and would have returned.
		 */
		ctx = (ictx = areq->an_context) ? &ictx->kc_glbl_ctx : NULL;

		FUNC8(&areq->an_lock);
		/*
		 * We need to maintain ordering for multi-part requests.
		 * an_is_my_turn is set to B_TRUE initially for a request
		 * when it is enqueued and there are no other requests
		 * for that context. It is set later from kcf_aop_done() when
		 * the request before us in the chain of requests for the
		 * context completes. We get signaled at that point.
		 */
		if (ictx != NULL) {
			FUNC0(ictx->kc_prov_desc == areq->an_provider);

			while (areq->an_is_my_turn == B_FALSE) {
				FUNC5(&areq->an_turn_cv, &areq->an_lock);
			}
		}
		areq->an_state = REQ_INPROGRESS;
		FUNC9(&areq->an_lock);

		error = FUNC4(areq->an_provider, ctx,
		    &areq->an_params, areq);
	}

bail:
	if (error == CRYPTO_QUEUED) {
		/*
		 * The request is queued by the provider and we should
		 * get a crypto_op_notification() from the provider later.
		 * We notify the consumer at that time.
		 */
		return;
	} else {		/* CRYPTO_SUCCESS or other failure */
		FUNC3(pd);
		if (ctype == CRYPTO_SYNCH)
			FUNC7(sreq, error);
		else
			FUNC6(areq, error);
	}
}