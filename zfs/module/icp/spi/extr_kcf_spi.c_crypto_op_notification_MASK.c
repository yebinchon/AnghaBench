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
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_6__* sn_provider; } ;
typedef  TYPE_2__ kcf_sreq_node_t ;
typedef  scalar_t__ kcf_call_type_t ;
struct TYPE_9__ {TYPE_6__* an_provider; } ;
typedef  TYPE_3__ kcf_areq_node_t ;
typedef  int /*<<< orphan*/ * crypto_req_handle_t ;
struct TYPE_7__ {int /*<<< orphan*/  ks_nfails; } ;
struct TYPE_10__ {TYPE_1__ pd_sched_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CRYPTO_ASYNCH ; 
 int CRYPTO_SUCCESS ; 
 scalar_t__ CRYPTO_SYNCH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 

void
FUNC5(crypto_req_handle_t handle, int error)
{
	kcf_call_type_t ctype;

	if (handle == NULL)
		return;

	if ((ctype = FUNC1(handle)) == CRYPTO_SYNCH) {
		kcf_sreq_node_t *sreq = (kcf_sreq_node_t *)handle;

		if (error != CRYPTO_SUCCESS)
			sreq->sn_provider->pd_sched_info.ks_nfails++;
		FUNC2(sreq->sn_provider);
		FUNC4(sreq, error);
	} else {
		kcf_areq_node_t *areq = (kcf_areq_node_t *)handle;

		FUNC0(ctype == CRYPTO_ASYNCH);
		if (error != CRYPTO_SUCCESS)
			areq->an_provider->pd_sched_info.ks_nfails++;
		FUNC2(areq->an_provider);
		FUNC3(areq, error);
	}
}