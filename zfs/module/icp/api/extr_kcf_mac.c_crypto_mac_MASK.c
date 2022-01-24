#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kcf_req_params_t ;
struct TYPE_25__ {scalar_t__ pd_prov_type; int pd_flags; scalar_t__ pd_hash_limit; int /*<<< orphan*/  pd_sid; } ;
typedef  TYPE_1__ kcf_provider_desc_t ;
typedef  int /*<<< orphan*/  kcf_prov_tried_t ;
struct TYPE_26__ {scalar_t__ me_gen_swprov; } ;
typedef  TYPE_2__ kcf_mech_entry_t ;
struct TYPE_27__ {scalar_t__ ct_generation; int /*<<< orphan*/ * ct_prov_tmpl; } ;
typedef  TYPE_3__ kcf_ctx_template_t ;
typedef  int /*<<< orphan*/ * crypto_spi_ctx_template_t ;
struct TYPE_28__ {int /*<<< orphan*/  cm_type; } ;
typedef  TYPE_4__ crypto_mechanism_t ;
typedef  int /*<<< orphan*/  crypto_key_t ;
struct TYPE_29__ {scalar_t__ cd_length; } ;
typedef  TYPE_5__ crypto_data_t ;
typedef  scalar_t__ crypto_ctx_template_t ;
typedef  int /*<<< orphan*/  crypto_call_req_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int CRYPTO_BUFFER_TOO_BIG ; 
 int /*<<< orphan*/  CRYPTO_FG_MAC_ATOMIC ; 
 int CRYPTO_HASH_NO_UPDATE ; 
 scalar_t__ CRYPTO_HW_PROVIDER ; 
 int CRYPTO_OLD_CTX_TEMPLATE ; 
 int CRYPTO_QUEUED ; 
 int CRYPTO_SUCCESS ; 
 scalar_t__ CRYPTO_SW_PROVIDER ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KCF_OP_ATOMIC ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,TYPE_5__*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,TYPE_5__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ,TYPE_2__**,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ **,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC15(crypto_mechanism_t *mech, crypto_data_t *data,
    crypto_key_t *key, crypto_ctx_template_t tmpl, crypto_data_t *mac,
    crypto_call_req_t *crq)
{
	int error;
	kcf_mech_entry_t *me;
	kcf_req_params_t params;
	kcf_provider_desc_t *pd;
	kcf_ctx_template_t *ctx_tmpl;
	crypto_spi_ctx_template_t spi_ctx_tmpl = NULL;
	kcf_prov_tried_t *list = NULL;

retry:
	/* The pd is returned held */
	if ((pd = FUNC12(mech->cm_type, &me, &error,
	    list, CRYPTO_FG_MAC_ATOMIC, FUNC1(crq),
	    data->cd_length)) == NULL) {
		if (list != NULL)
			FUNC11(list);
		return (error);
	}

	/*
	 * For SW providers, check the validity of the context template
	 * It is very rare that the generation number mis-matches, so
	 * is acceptable to fail here, and let the consumer recover by
	 * freeing this tmpl and create a new one for the key and new SW
	 * provider
	 */
	if ((pd->pd_prov_type == CRYPTO_SW_PROVIDER) &&
	    ((ctx_tmpl = (kcf_ctx_template_t *)tmpl) != NULL)) {
		if (ctx_tmpl->ct_generation != me->me_gen_swprov) {
			if (list != NULL)
				FUNC11(list);
			FUNC7(pd);
			return (CRYPTO_OLD_CTX_TEMPLATE);
		} else {
			spi_ctx_tmpl = ctx_tmpl->ct_prov_tmpl;
		}
	}

	/* The fast path for SW providers. */
	if (FUNC0(crq, pd)) {
		crypto_mechanism_t lmech;

		lmech = *mech;
		FUNC8(mech->cm_type, pd, &lmech);

		error = FUNC6(pd, pd->pd_sid, &lmech, key, data,
		    mac, spi_ctx_tmpl, FUNC9(crq));
		FUNC5(pd, error);
	} else {
		if (pd->pd_prov_type == CRYPTO_HW_PROVIDER &&
		    (pd->pd_flags & CRYPTO_HASH_NO_UPDATE) &&
		    (data->cd_length > pd->pd_hash_limit)) {
			/*
			 * XXX - We need a check to see if this is indeed
			 * a HMAC. So far, all kernel clients use
			 * this interface only for HMAC. So, this is fine
			 * for now.
			 */
			error = CRYPTO_BUFFER_TOO_BIG;
		} else {
			FUNC10(&params, KCF_OP_ATOMIC,
			    pd->pd_sid, mech, key, data, mac, spi_ctx_tmpl);

			error = FUNC14(pd, NULL, crq, &params,
			    FUNC3(crq));
		}
	}

	if (error != CRYPTO_SUCCESS && error != CRYPTO_QUEUED &&
	    FUNC2(error)) {
		/* Add pd to the linked list of providers tried. */
		if (FUNC13(&list, pd, FUNC4(crq)) != NULL)
			goto retry;
	}

	if (list != NULL)
		FUNC11(list);

	FUNC7(pd);
	return (error);
}