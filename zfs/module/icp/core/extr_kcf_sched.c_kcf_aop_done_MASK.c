#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kcf_op_type_t ;
struct TYPE_15__ {TYPE_5__* kr_areq; } ;
typedef  TYPE_3__ kcf_dual_req_t ;
struct TYPE_16__ {int /*<<< orphan*/  kc_in_use_lock; int /*<<< orphan*/ * kc_req_chain_last; TYPE_5__* kc_req_chain_first; } ;
typedef  TYPE_4__ kcf_context_t ;
struct TYPE_14__ {int cr_flag; scalar_t__ cr_callback_arg; } ;
struct TYPE_13__ {int /*<<< orphan*/  rp_optype; } ;
struct TYPE_17__ {TYPE_2__ an_reqarg; void* an_isdual; int /*<<< orphan*/  an_lock; int /*<<< orphan*/  an_turn_cv; int /*<<< orphan*/  an_is_my_turn; struct TYPE_17__* an_ctxchain_next; TYPE_4__* an_context; TYPE_1__ an_params; int /*<<< orphan*/  an_state; } ;
typedef  TYPE_5__ kcf_areq_node_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int CRYPTO_NOTIFY_OPDONE ; 
 scalar_t__ CRYPTO_QUEUED ; 
 int CRYPTO_SKIP_REQID ; 
 int CRYPTO_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  REQ_DONE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 scalar_t__ FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

void
FUNC15(kcf_areq_node_t *areq, int error)
{
	kcf_op_type_t optype;
	boolean_t skip_notify = B_FALSE;
	kcf_context_t *ictx;
	kcf_areq_node_t *nextreq;

	/*
	 * Handle recoverable errors. This has to be done first
	 * before doing anything else in this routine so that
	 * we do not change the state of the request.
	 */
	if (error != CRYPTO_SUCCESS && FUNC3(error)) {
		/*
		 * We try another provider, if one is available. Else
		 * we continue with the failure notification to the
		 * client.
		 */
		if (FUNC12(areq) == CRYPTO_QUEUED)
			return;
	}

	FUNC13(&areq->an_lock);
	areq->an_state = REQ_DONE;
	FUNC14(&areq->an_lock);

	optype = (&areq->an_params)->rp_optype;
	if ((ictx = areq->an_context) != NULL) {
		/*
		 * A request after it is removed from the request
		 * queue, still stays on a chain of requests hanging
		 * of its context structure. It needs to be removed
		 * from this chain at this point.
		 */
		FUNC13(&ictx->kc_in_use_lock);
		nextreq = areq->an_ctxchain_next;
		if (nextreq != NULL) {
			FUNC13(&nextreq->an_lock);
			nextreq->an_is_my_turn = B_TRUE;
			FUNC10(&nextreq->an_turn_cv);
			FUNC14(&nextreq->an_lock);
		}

		ictx->kc_req_chain_first = nextreq;
		if (nextreq == NULL)
			ictx->kc_req_chain_last = NULL;
		FUNC14(&ictx->kc_in_use_lock);

		if (FUNC4(optype) || FUNC1(optype)) {
			FUNC0(nextreq == NULL);
			FUNC8(ictx);
		} else if (error != CRYPTO_SUCCESS && FUNC2(optype)) {
		/*
		 * NOTE - We do not release the context in case of update
		 * operations. We require the consumer to free it explicitly,
		 * in case it wants to abandon an update operation. This is done
		 * as there may be mechanisms in ECB mode that can continue
		 * even if an operation on a block fails.
		 */
			FUNC8(ictx);
		}
	}

	/* Deal with the internal continuation to this request first */

	if (areq->an_isdual) {
		kcf_dual_req_t *next_arg;
		next_arg = (kcf_dual_req_t *)areq->an_reqarg.cr_callback_arg;
		next_arg->kr_areq = areq;
		FUNC6(areq);
		areq->an_isdual = B_FALSE;

		FUNC9(areq, error);
		return;
	}

	/*
	 * If CRYPTO_NOTIFY_OPDONE flag is set, we should notify
	 * always. If this flag is clear, we skip the notification
	 * provided there are no errors.  We check this flag for only
	 * init or update operations. It is ignored for single, final or
	 * atomic operations.
	 */
	skip_notify = (FUNC5(optype) || FUNC2(optype)) &&
	    (!(areq->an_reqarg.cr_flag & CRYPTO_NOTIFY_OPDONE)) &&
	    (error == CRYPTO_SUCCESS);

	if (!skip_notify) {
		FUNC9(areq, error);
	}

	if (!(areq->an_reqarg.cr_flag & CRYPTO_SKIP_REQID))
		FUNC11(areq);

	FUNC7(areq);
}