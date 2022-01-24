#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kcf_req_params_t ;
struct TYPE_22__ {scalar_t__ pd_prov_type; int pd_flags; scalar_t__ pd_hash_limit; int /*<<< orphan*/  pd_sid; } ;
typedef  TYPE_1__ kcf_provider_desc_t ;
typedef  int /*<<< orphan*/  kcf_prov_tried_t ;
struct TYPE_23__ {int /*<<< orphan*/  cm_type; } ;
typedef  TYPE_2__ crypto_mechanism_t ;
struct TYPE_24__ {scalar_t__ cd_length; } ;
typedef  TYPE_3__ crypto_data_t ;
typedef  int /*<<< orphan*/  crypto_call_req_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int CRYPTO_BUFFER_TOO_BIG ; 
 int /*<<< orphan*/  CRYPTO_FG_DIGEST_ATOMIC ; 
 int CRYPTO_HASH_NO_UPDATE ; 
 scalar_t__ CRYPTO_HW_PROVIDER ; 
 int CRYPTO_QUEUED ; 
 int CRYPTO_SUCCESS ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KCF_OP_ATOMIC ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ **,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC14(crypto_mechanism_t *mech, crypto_data_t *data,
    crypto_data_t *digest, crypto_call_req_t *crq)
{
	int error;
	kcf_provider_desc_t *pd;
	kcf_req_params_t params;
	kcf_prov_tried_t *list = NULL;

retry:
	/* The pd is returned held */
	if ((pd = FUNC11(mech->cm_type, NULL, &error, list,
	    CRYPTO_FG_DIGEST_ATOMIC, FUNC1(crq),
	    data->cd_length)) == NULL) {
		if (list != NULL)
			FUNC10(list);
		return (error);
	}

	/* The fast path for SW providers. */
	if (FUNC0(crq, pd)) {
		crypto_mechanism_t lmech;

		lmech = *mech;
		FUNC7(mech->cm_type, pd, &lmech);
		error = FUNC4(pd, pd->pd_sid, &lmech, data,
		    digest, FUNC8(crq));
		FUNC5(pd, error);
	} else {
		if (pd->pd_prov_type == CRYPTO_HW_PROVIDER &&
		    (pd->pd_flags & CRYPTO_HASH_NO_UPDATE) &&
		    (data->cd_length > pd->pd_hash_limit)) {
			error = CRYPTO_BUFFER_TOO_BIG;
		} else {
			FUNC9(&params, KCF_OP_ATOMIC,
			    pd->pd_sid, mech, NULL, data, digest);

			/* no crypto context to carry between multiple parts. */
			error = FUNC13(pd, NULL, crq, &params,
			    B_FALSE);
		}
	}

	if (error != CRYPTO_SUCCESS && error != CRYPTO_QUEUED &&
	    FUNC2(error)) {
		/* Add pd to the linked list of providers tried. */
		if (FUNC12(&list, pd, FUNC3(crq)) != NULL)
			goto retry;
	}

	if (list != NULL)
		FUNC10(list);

	FUNC6(pd);
	return (error);
}