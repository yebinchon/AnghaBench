#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dsl_dataset_t ;
struct TYPE_6__ {scalar_t__ dcrka_dsobj; scalar_t__ dcrka_fromobj; int /*<<< orphan*/  dcrka_nvl; int /*<<< orphan*/  dcrka_ostype; } ;
typedef  TYPE_1__ dsl_crypto_recv_key_arg_t ;
struct TYPE_7__ {int /*<<< orphan*/  tx_pool; } ;
typedef  TYPE_2__ dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC4(void *arg, dmu_tx_t *tx)
{
	int ret;
	dsl_crypto_recv_key_arg_t *dcrka = arg;
	dsl_dataset_t *ds = NULL, *fromds = NULL;

	ret = FUNC2(tx->tx_pool, dcrka->dcrka_dsobj,
	    FTAG, &ds);
	if (ret != 0)
		goto out;

	if (dcrka->dcrka_fromobj != 0) {
		ret = FUNC2(tx->tx_pool, dcrka->dcrka_fromobj,
		    FTAG, &fromds);
		if (ret != 0)
			goto out;
	}

	ret = FUNC1(ds, fromds,
	    dcrka->dcrka_ostype, dcrka->dcrka_nvl, tx);
	if (ret != 0)
		goto out;

	/*
	 * We run this check even if we won't be doing this part of
	 * the receive now so that we don't make the user wait until
	 * the receive finishes to fail.
	 */
	ret = FUNC0(ds, dcrka->dcrka_nvl, tx);
	if (ret != 0)
		goto out;

out:
	if (ds != NULL)
		FUNC3(ds, FTAG);
	if (fromds != NULL)
		FUNC3(fromds, FTAG);
	return (ret);
}