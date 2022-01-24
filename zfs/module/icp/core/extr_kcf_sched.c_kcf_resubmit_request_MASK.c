#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  taskq_t ;
struct TYPE_22__ {int /*<<< orphan*/ * ks_taskq; } ;
struct TYPE_23__ {int pd_prov_type; TYPE_2__ pd_sched_info; int /*<<< orphan*/  pd_sid; int /*<<< orphan*/  pd_prov_handle; } ;
typedef  TYPE_3__ kcf_provider_desc_t ;
struct TYPE_27__ {int /*<<< orphan*/ * cc_provider_private; int /*<<< orphan*/  cc_session; int /*<<< orphan*/  cc_provider; } ;
struct TYPE_24__ {TYPE_7__ kc_glbl_ctx; TYPE_3__* kc_prov_desc; } ;
typedef  TYPE_4__ kcf_context_t ;
struct TYPE_21__ {int cr_flag; } ;
struct TYPE_25__ {int /*<<< orphan*/  an_lock; int /*<<< orphan*/  an_state; TYPE_3__* an_provider; TYPE_4__* an_context; TYPE_1__ an_reqarg; int /*<<< orphan*/  an_tried_plist; } ;
typedef  TYPE_5__ kcf_areq_node_t ;
struct TYPE_26__ {int /*<<< orphan*/  cm_type; } ;
typedef  TYPE_6__ crypto_mechanism_t ;
typedef  int /*<<< orphan*/  crypto_mech_type_t ;
typedef  int /*<<< orphan*/  crypto_func_group_t ;
typedef  TYPE_7__ crypto_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CRYPTO_FAILED ; 
 int CRYPTO_HOST_MEMORY ; 
#define  CRYPTO_HW_PROVIDER 129 
 int CRYPTO_QUEUED ; 
 int CRYPTO_RESTRICTED ; 
#define  CRYPTO_SW_PROVIDER 128 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  KM_NOSLEEP ; 
 int /*<<< orphan*/  REQ_WAITING ; 
 int /*<<< orphan*/  TASKQID_INVALID ; 
 int /*<<< orphan*/  TQ_NOSLEEP ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_6__**,TYPE_6__**,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_5__*) ; 
 TYPE_3__* FUNC5 (TYPE_6__*,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  process_req_hwp ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(kcf_areq_node_t *areq)
{
	int error = CRYPTO_FAILED;
	kcf_context_t *ictx;
	kcf_provider_desc_t *old_pd;
	kcf_provider_desc_t *new_pd;
	crypto_mechanism_t *mech1 = NULL, *mech2 = NULL;
	crypto_mech_type_t prov_mt1, prov_mt2;
	crypto_func_group_t fg = 0;

	if (!FUNC3(areq, &mech1, &mech2, &fg))
		return (error);

	old_pd = areq->an_provider;
	/*
	 * Add old_pd to the list of providers already tried. We release
	 * the hold on old_pd (from the earlier kcf_get_mech_provider()) in
	 * kcf_free_triedlist().
	 */
	if (FUNC7(&areq->an_tried_plist, old_pd,
	    KM_NOSLEEP) == NULL)
		return (error);

	if (mech1 && !mech2) {
		new_pd = FUNC6(mech1->cm_type, NULL, &error,
		    areq->an_tried_plist, fg,
		    (areq->an_reqarg.cr_flag & CRYPTO_RESTRICTED), 0);
	} else {
		FUNC0(mech1 != NULL && mech2 != NULL);

		new_pd = FUNC5(mech1, mech2, NULL, &prov_mt1,
		    &prov_mt2, &error, areq->an_tried_plist, fg, fg,
		    (areq->an_reqarg.cr_flag & CRYPTO_RESTRICTED), 0);
	}

	if (new_pd == NULL)
		return (error);

	/*
	 * We reuse the old context by resetting provider specific
	 * fields in it.
	 */
	if ((ictx = areq->an_context) != NULL) {
		crypto_ctx_t *ctx;

		FUNC0(old_pd == ictx->kc_prov_desc);
		FUNC2(ictx->kc_prov_desc);
		FUNC1(new_pd);
		ictx->kc_prov_desc = new_pd;

		ctx = &ictx->kc_glbl_ctx;
		ctx->cc_provider = new_pd->pd_prov_handle;
		ctx->cc_session = new_pd->pd_sid;
		ctx->cc_provider_private = NULL;
	}

	/* We reuse areq. by resetting the provider and context fields. */
	FUNC2(old_pd);
	FUNC1(new_pd);
	areq->an_provider = new_pd;
	FUNC8(&areq->an_lock);
	areq->an_state = REQ_WAITING;
	FUNC9(&areq->an_lock);

	switch (new_pd->pd_prov_type) {
	case CRYPTO_SW_PROVIDER:
		error = FUNC4(areq);
		break;

	case CRYPTO_HW_PROVIDER: {
		taskq_t *taskq = new_pd->pd_sched_info.ks_taskq;

		if (FUNC10(taskq, process_req_hwp, areq, TQ_NOSLEEP) ==
		    TASKQID_INVALID) {
			error = CRYPTO_HOST_MEMORY;
		} else {
			error = CRYPTO_QUEUED;
		}

		break;
	default:
		break;
	}
	}

	return (error);
}