#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  kc_in_use_lock; int /*<<< orphan*/ * kc_req_chain_first; } ;
typedef  TYPE_1__ kcf_context_t ;
typedef  int /*<<< orphan*/  kcf_areq_node_t ;
struct TYPE_5__ {scalar_t__ cc_framework_private; } ;
typedef  TYPE_2__ crypto_ctx_t ;
typedef  int /*<<< orphan*/ * crypto_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(crypto_context_t ctx)
{
	kcf_context_t *ictx;
	kcf_areq_node_t *areq;

	if (ctx == NULL)
		return;

	ictx = (kcf_context_t *)((crypto_ctx_t *)ctx)->cc_framework_private;

	FUNC5(&ictx->kc_in_use_lock);

	/* Walk the chain and cancel each request */
	while ((areq = ictx->kc_req_chain_first) != NULL) {
		/*
		 * We have to drop the lock here as we may have
		 * to wait for request completion. We hold the
		 * request before dropping the lock though, so that it
		 * won't be freed underneath us.
		 */
		FUNC1(areq);
		FUNC6(&ictx->kc_in_use_lock);

		FUNC4(FUNC0(areq));
		FUNC2(areq);

		FUNC5(&ictx->kc_in_use_lock);
	}

	FUNC6(&ictx->kc_in_use_lock);
	FUNC3(ictx);
}