#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  rt_lock; TYPE_3__** rt_idhash; } ;
typedef  TYPE_1__ kcf_reqid_table_t ;
struct TYPE_13__ {int pd_prov_type; } ;
typedef  TYPE_2__ kcf_provider_desc_t ;
typedef  int /*<<< orphan*/  kcf_context_t ;
struct TYPE_14__ {int /*<<< orphan*/  an_done; int /*<<< orphan*/  an_lock; int /*<<< orphan*/ * an_context; int /*<<< orphan*/  an_state; TYPE_2__* an_provider; struct TYPE_14__* an_idnext; } ;
typedef  TYPE_3__ kcf_areq_node_t ;
typedef  size_t crypto_req_id_t ;
struct TYPE_15__ {int /*<<< orphan*/  gs_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  CRYPTO_HW_PROVIDER 129 
#define  CRYPTO_SW_PROVIDER 128 
 size_t FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (size_t) ; 
 size_t REQID_TABLE_MASK ; 
 int /*<<< orphan*/  REQ_WAITING ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_8__* gswq ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 TYPE_1__** kcf_reqid_table ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void
FUNC11(crypto_req_id_t id)
{
	int indx;
	kcf_areq_node_t *areq;
	kcf_provider_desc_t *pd;
	kcf_context_t *ictx;
	kcf_reqid_table_t *rt;

	rt = kcf_reqid_table[id & REQID_TABLE_MASK];
	indx = FUNC4(id);

	FUNC9(&rt->rt_lock);
	for (areq = rt->rt_idhash[indx]; areq; areq = areq->an_idnext) {
	if (FUNC1(areq) == id) {
		/*
		 * We found the request. It is either still waiting
		 * in the framework queues or running at the provider.
		 */
		pd = areq->an_provider;
		FUNC0(pd != NULL);

		switch (pd->pd_prov_type) {
		case CRYPTO_SW_PROVIDER:
			FUNC9(&gswq->gs_lock);
			FUNC9(&areq->an_lock);

			/* This request can be safely canceled. */
			if (areq->an_state <= REQ_WAITING) {
				/* Remove from gswq, global software queue. */
				FUNC6(areq);
				if ((ictx = areq->an_context) != NULL)
					FUNC7(ictx, areq);

				FUNC10(&areq->an_lock);
				FUNC10(&gswq->gs_lock);
				FUNC10(&rt->rt_lock);

				/* Remove areq from hash table and free it. */
				FUNC8(areq);
				FUNC3(areq);
				return;
			}

			FUNC10(&areq->an_lock);
			FUNC10(&gswq->gs_lock);
			break;

		case CRYPTO_HW_PROVIDER:
			/*
			 * There is no interface to remove an entry
			 * once it is on the taskq. So, we do not do
			 * anything for a hardware provider.
			 */
			break;
		default:
			break;
		}

		/*
		 * The request is running. Wait for the request completion
		 * to notify us.
		 */
		FUNC2(areq);
		while (FUNC1(areq) == id)
			FUNC5(&areq->an_done, &rt->rt_lock);
		FUNC3(areq);
		break;
	}
	}

	FUNC10(&rt->rt_lock);
}